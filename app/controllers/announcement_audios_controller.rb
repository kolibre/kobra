class AnnouncementAudiosController < ApplicationController
  before_action :set_announcement_audio, only: [:show, :update, :destroy]

  # GET /announcement_audios
  def index
    @announcement_audios = AnnouncementAudio.all

    render json: @announcement_audios
  end

  # GET /announcement_audios/1
  def show
    render json: @announcement_audio
  end

  # POST /announcement_audios
  def create
    @announcement_audio = AnnouncementAudio.new(announcement_audio_params)

    if @announcement_audio.save
      render json: @announcement_audio, status: :created, location: @announcement_audio
    else
      render json: @announcement_audio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /announcement_audios/1
  def update
    if @announcement_audio.update(announcement_audio_params)
      render json: @announcement_audio
    else
      render json: @announcement_audio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /announcement_audios/1
  def destroy
    @announcement_audio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement_audio
      @announcement_audio = AnnouncementAudio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def announcement_audio_params
      params.require(:announcement_audio).permit(:announcement_text, :size, :length)
    end
end
