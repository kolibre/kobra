class UserContentsController < ApplicationController
  before_action :set_user_content, only: [:show, :update, :destroy]

  # GET /user_contents
  def index
    @user_contents = UserContent.all

    render json: @user_contents
  end

  # GET /user_contents/1
  def show
    render json: @user_content
  end

  # POST /user_contents
  def create
    @user_content = UserContent.new(user_content_params)

    if @user_content.save
      render json: @user_content, status: :created, location: @user_content
    else
      render json: @user_content.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_contents/1
  def update
    if @user_content.update(user_content_params)
      render json: @user_content
    else
      render json: @user_content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_contents/1
  def destroy
    @user_content.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_content
      @user_content = UserContent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_content_params
      params.require(:user_content).permit(:user_id, :content_id, :contentlist_id, :return, :returned, :return_at, :state_id)
    end
end
