class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /users
  def index
    @users = User.all

    render json: @users, include: ['trips_attending.comments', 'trips_created.comments', 'trips_attending.comments.user', 'trips_created.comments.user', 'image_src']
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create

    @user = User.new(Uploader.upload(user_params))

    respond_to do |format|
          if @user.save
            # Tell the UserMailer to send a welcome email after save
            NotifierMailer.welcome_email(@user).deliver

            format.html { redirect_to(@user, notice: 'User was successfully created.') }
            format.json { render json: @user, status: :created, location: @user }
          else
            format.html { render action: 'new' }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
  end

#What was replaced:
    # @user = User.new(Uploader.upload(user_params))
    #
    # # @user = User.new(user_params)
    #
    # if @user.save
    #   render json: @user, status: :created, location: @user
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end


  # PATCH/PUT /users/1
  def update

    @user = User.update(Uploader.upload(user_params))

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :first_name, :second_name, :image, :email, :password, :password_confirmation, :base64, trips_attending_ids:[])
    end
end
