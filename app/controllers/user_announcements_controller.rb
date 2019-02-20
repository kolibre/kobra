class UserAnnouncementsController < ApplicationController
  before_action :set_user_announcement, only: [:show, :update, :destroy]

  # GET /user_announcements
  def index
    @user_announcements = UserAnnouncement.all

    render json: @user_announcements
  end

  # GET /user_announcements/1
  def show
    render json: @user_announcement
  end

  # POST /user_announcements
  def create
    @user_announcement = UserAnnouncement.new(user_announcement_params)

    if @user_announcement.save
      render json: @user_announcement, status: :created, location: @user_announcement
    else
      render json: @user_announcement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_announcements/1
  def update
    if @user_announcement.update(user_announcement_params)
      render json: @user_announcement
    else
      render json: @user_announcement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_announcements/1
  def destroy
    @user_announcement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_announcement
      @user_announcement = UserAnnouncement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_announcement_params
      params.require(:user_announcement).permit(:user_id, :announcement_id)
    end
end
