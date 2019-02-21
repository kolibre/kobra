class QuestionInputsController < ApplicationController
  before_action :set_question_input, only: [:show, :update, :destroy]

  # GET /question_inputs
  def index
    @question_inputs = QuestionInput.all

    render json: @question_inputs
  end

  # GET /question_inputs/1
  def show
    render json: @question_input
  end

  # POST /question_inputs
  def create
    @question_input = QuestionInput.new(question_input_params)

    if @question_input.save
      render json: @question_input, status: :created, location: @question_input
    else
      render json: @question_input.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_inputs/1
  def update
    if @question_input.update(question_input_params)
      render json: @question_input
    else
      render json: @question_input.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_inputs/1
  def destroy
    @question_input.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_input
      @question_input = QuestionInput.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_input_params
      params.require(:question_input).permit(:question_id, :allow_multiple_selections, :text_numeric, :text_alphanumeric, :audio, :default_value)
    end
end
