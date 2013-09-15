class PostsController < ApplicationController
  wrap_parameters format: [:json, :xml]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(:post => @post)
    respond_to do |format|
      format.html
      format.xml { render xml: @post.to_xml }
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    respond_to do |format|
      format.html do
        @post = Post.new(post_params)
        if @post.save
          redirect_to @post, notice: 'Post was successfully created.'
        else
          render action: 'new'
        end
      end
      format.xml do
        @post = Post.new(Hash.from_xml(request.body.string)['post'])
        if @post.save
          render xml: @post, status: :created
        else
          render xml: @post.errors, status: :unprocessable_entity
        end
      end
    end
  end

# PATCH/PUT /posts/1
# PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      format.html do
        if @post.update(post_params)
          redirect_to @post, notice: 'Post was successfully updated.'
        else
          render action: 'edit'
        end
      end
      format.xml do
        post = Hash.from_xml(request.body.string)['post']
        if @post.update(title: post['title'], text: @post['text'])
          head :no_content
        else
          render xml: @post.errors, status: :unprocessable_entity
        end
      end
    end
  end

# DELETE /posts/1
# DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
