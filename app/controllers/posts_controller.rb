class PostsController < ApplicationController

    before_action :set_post, only: [:show, :edit, :update, :destroy]


    def home
        @posts = Post.all.order("created_at DESC")
    end

    def new
        @post = Post.new
        @comment = Comment.all
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            flash[:notice] = "Post create successful"
            redirect_to @post
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @post.update(post_params)
            flash[:notice] = "Post Update success!"
            redirect_to @post
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        flash[:notice] = "Post delete success!"
        redirect_to root_url
    end

    def busca
        @busca_por_titulo = params[:title]
        @busca = Post.where "title like ?", "%#{@busca_por_titulo}%"
    end

    private

    def post_params
        params.require(:post).permit :title, :content, :comment_id
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
