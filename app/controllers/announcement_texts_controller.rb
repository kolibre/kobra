class AnnouncementTextsController < ApplicationController
  before_action :set_announcement_text, only: [:show, :update, :destroy]

  # GET /announcement_texts
  def index
    @announcement_texts = AnnouncementText.all

    render json: @announcement_texts
  end

  # GET /announcement_texts/1
  def show
    render json: @announcement_text
  end

  # POST /announcement_texts
  def create
    @announcement_text = AnnouncementText.new(announcement_text_params)

    if @announcement_text.save
      render json: @announcement_text, status: :created, location: @announcement_text
    else
      render json: @announcement_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /announcement_texts/1
  def update
    if @announcement_text.update(announcement_text_params)
      render json: @announcement_text
    else
      render json: @announcement_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /announcement_texts/1
  def destroy
    @announcement_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement_text
      @announcement_text = AnnouncementText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def announcement_text_params
      params.require(:announcement_text).permit(:announcement_id, :text, :language_id)
    end
end
