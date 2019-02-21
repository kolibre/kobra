class QuestionAudiosController < ApplicationController
  before_action :set_question_audio, only: [:show, :update, :destroy]

  # GET /question_audios
  def index
    @question_audios = QuestionAudio.all

    render json: @question_audios
  end

  # GET /question_audios/1
  def show
    render json: @question_audio
  end

  # POST /question_audios
  def create
    @question_audio = QuestionAudio.new(question_audio_params)

    if @question_audio.save
      render json: @question_audio, status: :created, location: @question_audio
    else
      render json: @question_audio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_audios/1
  def update
    if @question_audio.update(question_audio_params)
      render json: @question_audio
    else
      render json: @question_audio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_audios/1
  def destroy
    @question_audio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_audio
      @question_audio = QuestionAudio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_audio_params
      params.require(:question_audio).permit(:question_text_id, :size, :length)
    end
end
