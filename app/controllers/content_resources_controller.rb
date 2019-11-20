class ContentResourcesController < ApplicationController
  before_action :set_content_resource, only: [:show, :update, :destroy]

  # GET /content_resources
  def index
    @content_resources = ContentResource.all

    render json: @content_resources
  end

  # GET /content_resources/1
  def show
    render json: @content_resource
  end

  # POST /content_resources
  def create
    @content_resource = ContentResource.new(content_resource_params)

    if @content_resource.save
      render json: @content_resource, status: :created, location: @content_resource
    else
      render json: @content_resource.errors, status: :unprocessable_entity
    end
  end

  # POST /contents/1/resource
  def upload
    content_id = params[:id]
    file_name = params.has_key?("file_name") ? params[:file_name] : nil
    bytes = params.has_key?("bytes") ? params[:bytes] : nil
    mime_type = params.has_key?("mime_type") ? params[:mime_type] : nil
    resource = params.has_key?("resource") ? params[:resource] : nil

    @content_resource = ContentResource.new(content_id: content_id, file_name: file_name, bytes: bytes, mime_type: mime_type, resource: resource)

    if @content_resource.save
      render json: @content_resource, status: :created, location: @content_resource
    else
      render json: @content_resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_resources/1
  def update
    if @content_resource.update(content_resource_params)
      render json: @content_resource
    else
      render json: @content_resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_resources/1
  def destroy
    @content_resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_resource
      @content_resource = ContentResource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_resource_params
      params.require(:content_resource).permit(:content_id, :file_name, :bytes, :mime_type, :resource)
    end
end
