class DaisyFormatsController < ApplicationController
  before_action :set_daisy_format, only: [:show, :update, :destroy]

  # GET /daisy_formats
  def index
    @daisy_formats = DaisyFormat.all

    render json: @daisy_formats
  end

  # GET /daisy_formats/1
  def show
    render json: @daisy_format
  end

  # POST /daisy_formats
  def create
    @daisy_format = DaisyFormat.new(daisy_format_params)

    if @daisy_format.save
      render json: @daisy_format, status: :created, location: @daisy_format
    else
      render json: @daisy_format.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daisy_formats/1
  def update
    if @daisy_format.update(daisy_format_params)
      render json: @daisy_format
    else
      render json: @daisy_format.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daisy_formats/1
  def destroy
    @daisy_format.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daisy_format
      @daisy_format = DaisyFormat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daisy_format_params
      params.require(:daisy_format).permit(:format)
    end
end
