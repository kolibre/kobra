class ContentAudiosController < ApplicationController
  before_action :set_content_audio, only: [:show, :update, :destroy]

  # GET /content_audios
  def index
    @content_audios = ContentAudio.all

    render json: @content_audios
  end

  # GET /content_audios/1
  def show
    render json: @content_audio
  end

  # POST /content_audios
  def create
    @content_audio = ContentAudio.new(content_audio_params)

    if @content_audio.save
      render json: @content_audio, status: :created, location: @content_audio
    else
      render json: @content_audio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_audios/1
  def update
    if @content_audio.update(content_audio_params)
      render json: @content_audio
    else
      render json: @content_audio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_audios/1
  def destroy
    @content_audio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_audio
      @content_audio = ContentAudio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_audio_params
      params.require(:content_audio).permit(:content_id, :size, :length)
    end
end
