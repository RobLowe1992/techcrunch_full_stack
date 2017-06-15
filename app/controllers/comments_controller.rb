class CommentsController < ApplicationController


  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.user_id = current_user.id
  end

  # GET /comments/1/edit

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.create(comment_params)

    redirect_to post_path(@comment.post_id)
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json


  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
end
