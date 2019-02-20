class ContentListsController < ApplicationController
  before_action :set_content_list, only: [:show, :update, :destroy]

  # GET /content_lists
  def index
    @content_lists = ContentList.all

    render json: @content_lists
  end

  # GET /content_lists/1
  def show
    render json: @content_list
  end

  # POST /content_lists
  def create
    @content_list = ContentList.new(content_list_params)

    if @content_list.save
      render json: @content_list, status: :created, location: @content_list
    else
      render json: @content_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_lists/1
  def update
    if @content_list.update(content_list_params)
      render json: @content_list
    else
      render json: @content_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_lists/1
  def destroy
    @content_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_list
      @content_list = ContentList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_list_params
      params.require(:content_list).permit(:name)
    end
end
