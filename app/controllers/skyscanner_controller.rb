require 'date'

class SkyscannerController < ApplicationController
  def flights
    date = params[:departDate].split('T').first

    base_url = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/'

    response = HTTParty.get("#{base_url}#{params[:origin]}/#{params[:destination]}/#{date}", {
     query: {
        apiKey: ENV["SKYSCANNER_API_KEY"]
      },
      headers: { 'Accept' => 'application/json'} #telling them that we want json bac from the api
    })

    puts "************ response **********"

    # p response.parsed_response["Places"][205]["PlaceId"] == response.parsed_response["Quotes"][0]["OutboundLeg"]["DestinationId"]
    quotes = response.parsed_response["Quotes"].map do | quote |
      destination = response.parsed_response["Places"].select do | place |
        place["PlaceId"] == quote["OutboundLeg"]["DestinationId"]
      end.first

      quote["DestinationCity"] = destination["CityName"]
      quote["DestinationCountry"] = destination["CountryName"]
      quote["code"] = destination["IataCode"] if destination["IataCode"]

      carrier_found = response.parsed_response["Carriers"].find do | carrier |
        carrier["CarrierId"] == quote["OutboundLeg"]["CarrierIds"][0]
      end

      quote["CarrierName"] = carrier_found["Name"] if carrier_found

      quote
    end

    filtered_quotes = []

    quotes.each do |quote|
      duplicate = filtered_quotes.find { | filtered_quote | filtered_quote["code"] == quote["code"] }
      if duplicate && duplicate["MinPrice"] > quote["MinPrice"]
        filtered_quotes.delete(duplicate)
      end

      filtered_quotes << quote
    end

    render json: filtered_quotes, status: :ok
  end
end

#req.query.destination = #{params[:destination]}, query = qs,

# in insominia: http://localhost:3000/api/flights?destination=LGW

# `${baseUrl}${req.query.origin}/${req.query.destination}/${req.query.departDate}/${req.query.returnDate}`
