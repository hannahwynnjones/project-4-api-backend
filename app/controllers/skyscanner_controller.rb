require 'date'

class SkyscannerController < ApplicationController
  def flights

    # tomorrow = Date.today + 1
    base_url = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/'

    response = HTTParty.get("#{base_url}#{params[:origin]}#{params[:destination]}/#{departDate}", {
     query: {
        apiKey: ENV["SKYSCANNER_API_KEY"]
      },
      headers: { 'Accept' => 'application/json'} #telling them that we want json bac from the api
    })

   render json: response, status: :ok
  end
end

#req.query.destination = #{params[:destination]}, query = qs,

# in insominia: http://localhost:3000/api/flights?destination=LGW

# `${baseUrl}${req.query.origin}/${req.query.destination}/${req.query.departDate}/${req.query.returnDate}`
