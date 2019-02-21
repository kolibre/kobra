class QuestionQuestionTextsController < ApplicationController
  before_action :set_question_question_text, only: [:show, :update, :destroy]

  # GET /question_question_texts
  def index
    @question_question_texts = QuestionQuestionText.all

    render json: @question_question_texts
  end

  # GET /question_question_texts/1
  def show
    render json: @question_question_text
  end

  # POST /question_question_texts
  def create
    @question_question_text = QuestionQuestionText.new(question_question_text_params)

    if @question_question_text.save
      render json: @question_question_text, status: :created, location: @question_question_text
    else
      render json: @question_question_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_question_texts/1
  def update
    if @question_question_text.update(question_question_text_params)
      render json: @question_question_text
    else
      render json: @question_question_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_question_texts/1
  def destroy
    @question_question_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_question_text
      @question_question_text = QuestionQuestionText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_question_text_params
      params.require(:question_question_text).permit(:question_id, :question_text_id)
    end
end
