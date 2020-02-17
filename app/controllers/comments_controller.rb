class CommentsController < ApplicationController

    before_action :set_comment, only: [:edit, :update, :destroy]

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to @comment
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def comment_params
        params.require(:comment).permit :comment
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end


end
