class UserLogsController < ApplicationController
  before_action :set_user_log, only: [:show, :update, :destroy]

  # GET /user_logs
  def index
    @user_logs = UserLog.all

    render json: @user_logs
  end

  # GET /user_logs/1
  def show
    render json: @user_log
  end

  # POST /user_logs
  def create
    @user_log = UserLog.new(user_log_params)

    if @user_log.save
      render json: @user_log, status: :created, location: @user_log
    else
      render json: @user_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_logs/1
  def update
    if @user_log.update(user_log_params)
      render json: @user_log
    else
      render json: @user_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_logs/1
  def destroy
    @user_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_log
      @user_log = UserLog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_log_params
      params.require(:user_log).permit(:user_id, :ip, :request, :response)
    end
end
