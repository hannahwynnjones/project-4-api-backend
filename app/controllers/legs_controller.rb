class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /legs
  def index
    @legs = Leg.all
    render json: @legs, include: ['airport']
  end

  # GET /legs/1
  def show
    render json: @leg, include: ['airport']
  end

  # POST /legs
  def create
    p leg_params
    # @leg = Leg.new(start_date:params[:start_date], trip_id:params[:trip_id], airport_id: 1)
    @leg = Leg.new(leg_params)
    puts @leg

    if @leg.save
      render json: @leg, status: :created, location: @leg, include: ['airport']
    else
      render json: @leg.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /legs/1
  def update

    return render json: { errors: ["Unauthorised"] } if @leg.user !=current_user

    if @leg.update(leg_params)
      render json: @leg, include: ['airport']
    else
      render json: @leg.errors, status: :unprocessable_entity
    end
  end

  # DELETE /legs/1
  def destroy
    return render json: { errors: ["Unauthorised"] } if @leg.user !=current_user
    @leg.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leg_params
      params.require(:leg).permit(:airport_id, :start_date, :price, :airline, :trip_id, :user_id)
    end
end
