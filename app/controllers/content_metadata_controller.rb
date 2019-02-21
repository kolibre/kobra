class ContentMetadataController < ApplicationController
  before_action :set_content_metadatum, only: [:show, :update, :destroy]

  # GET /content_metadata
  def index
    @content_metadata = ContentMetadatum.all

    render json: @content_metadata
  end

  # GET /content_metadata/1
  def show
    render json: @content_metadatum
  end

  # POST /content_metadata
  def create
    @content_metadatum = ContentMetadatum.new(content_metadatum_params)

    if @content_metadatum.save
      render json: @content_metadatum, status: :created, location: @content_metadatum
    else
      render json: @content_metadatum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_metadata/1
  def update
    if @content_metadatum.update(content_metadatum_params)
      render json: @content_metadatum
    else
      render json: @content_metadatum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_metadata/1
  def destroy
    @content_metadatum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_metadatum
      @content_metadatum = ContentMetadatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_metadatum_params
      params.require(:content_metadatum).permit(:content_id, :key, :value)
    end
end
