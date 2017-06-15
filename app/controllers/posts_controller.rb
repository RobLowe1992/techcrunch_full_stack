class PostsController < ApplicationController


  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(:post_id => params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.create(post_params)

    redirect_to post_path(@post)
  end

  def create_comment
    @comment = Comment.create(comment_params)

    redirect_to post_path(@post)
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:author, :img_url, :title, :content)
    end
    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id)
    end
end
