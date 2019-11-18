class UserContentsController < ApplicationController
  before_action :set_user_content, only: [:show, :update, :destroy]
  before_action :set_content, only: [:add, :remove]

  # GET /user_contents
  def index
    @user_contents = UserContent.all

    render json: @user_contents
  end

  # GET /user_contents/1
  def show
    render json: @user_content
  end

  # POST /user_contents
  def create
    @user_content = UserContent.new(user_content_params)

    if @user_content.save
      render json: @user_content, status: :created, location: @user_content
    else
      render json: @user_content.errors, status: :unprocessable_entity
    end
  end

  # POST /user_contents/add - add content to one or many users
  def add
    must_return = params.has_key?("return") ? params[:return] : false
    return_at = params.has_key?("return_at") ? params[:return_at] : nil
    @user_contents = []
    if params[:users].nil?
      @users = User.all
      @users.each do |user|
        @user_content = UserContent.create(user_id: user.id, content_id: @content.id, return: must_return, return_at: return_at)
        unless @user_content.id.nil?
          @user_contents.push(@user_content)
        end
      end
    else
      @users = User.where(id: params[:users])
      @users.each do |user|
        @user_content = UserContent.create(user_id: user.id, content_id: @content.id, return: must_return, return_at: return_at)
        unless @user_content.id.nil?
          @user_contents.push(@user_content)
        end
      end
    end
    if @user_contents.length > 0
      render :json => @user_contents, :status => :created
    else
      render :json => @user_contents, :status => :ok
    end
  end

  # POST /user_contents/remove - remove content from one or many users
  def remove
    if params[:users].nil?
      UserContent.where(content_id: @content.id).destroy_all
    else
      UserContent.where(user_id: params[:users], content_id: @content.id).destroy_all
    end
  end

  # PATCH/PUT /user_contents/1
  def update
    if @user_content.update(user_content_params)
      render json: @user_content
    else
      render json: @user_content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_contents/1
  def destroy
    @user_content.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_content
      @user_content = UserContent.find(params[:id])
    end

    def set_content
      @content = Content.find(params[:content_id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_content_params
      params.require(:user_content).permit(:user_id, :users, :content_id, :content_list_id, :content_list_v1_id, :return, :return_at)
    end
end
