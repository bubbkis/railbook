class FanCommentsController < ApplicationController
  before_action :set_fan_comment, only: [:show, :edit, :update, :destroy]

  # GET /fan_comments
  def index
    @fan_comments = FanComment.all
  end

  # GET /fan_comments/1
  def show
  end

  # GET /fan_comments/new
  def new
    @fan_comment = FanComment.new
  end

  # GET /fan_comments/1/edit
  def edit
  end

  # POST /fan_comments
  def create
    @fan_comment = FanComment.new(fan_comment_params)

    if @fan_comment.save
      redirect_to @fan_comment, notice: 'Fan comment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fan_comments/1
  def update
    if @fan_comment.update(fan_comment_params)
      redirect_to @fan_comment, notice: 'Fan comment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fan_comments/1
  def destroy
    @fan_comment.destroy
    redirect_to fan_comments_url, notice: 'Fan comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fan_comment
      @fan_comment = FanComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fan_comment_params
      params.require(:fan_comment).permit(:author_no, :name, :body, :deleted)
    end
end
