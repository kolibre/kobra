class QuestionTypesController < ApplicationController
  before_action :set_question_type, only: [:show, :update, :destroy]

  # GET /question_types
  def index
    @question_types = QuestionType.all

    render json: @question_types
  end

  # GET /question_types/1
  def show
    render json: @question_type
  end

  # POST /question_types
  def create
    @question_type = QuestionType.new(question_type_params)

    if @question_type.save
      render json: @question_type, status: :created, location: @question_type
    else
      render json: @question_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_types/1
  def update
    if @question_type.update(question_type_params)
      render json: @question_type
    else
      render json: @question_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_types/1
  def destroy
    @question_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_type
      @question_type = QuestionType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_type_params
      params.require(:question_type).permit(:type)
    end
end
