class CommentsController < ApplicationController

    before_action :set_comment, only: [:edit, :update, :destroy]

    def index
        #@comments = Comment.all
    end

    def new
        #@comment = Comment.new
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end

    def show
        #@comment = Comment.find(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit :comment
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end


end
