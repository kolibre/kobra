class QuestionTextsController < ApplicationController
  before_action :set_question_text, only: [:show, :update, :destroy]

  # GET /question_texts
  def index
    @question_texts = QuestionText.all

    render json: @question_texts
  end

  # GET /question_texts/1
  def show
    render json: @question_text
  end

  # POST /question_texts
  def create
    @question_text = QuestionText.new(question_text_params)

    if @question_text.save
      render json: @question_text, status: :created, location: @question_text
    else
      render json: @question_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_texts/1
  def update
    if @question_text.update(question_text_params)
      render json: @question_text
    else
      render json: @question_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_texts/1
  def destroy
    @question_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_text
      @question_text = QuestionText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_text_params
      params.require(:question_text).permit(:language_id, :text)
    end
end
