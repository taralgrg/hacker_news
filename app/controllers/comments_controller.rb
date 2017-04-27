class CommentsController < ApplicationController
    def new
        @link = Link.find(params[:link_id])
        @comment = @link.comments.new
    end

    def create
        @link = Link.find(params[:link_id])
        @comment = @link.comments.new(comment_params)
        if @comment.save
            redirect_to link_path(@comment.link)
        else
            render :new
        end
    end

    def edit
        @link = Link.find(params[:link_id])
        @comment = Comment.find(params[:id])
    end

    def update
        @link = Link.find(params[:link_id])
        @comment= Comment.find(params[:id])
        if @comment.update(comment_params)
            flash[:notice] = "Comment successfully updated!"
            redirect_to link_path(@comment.link)
        else
            render :edit
        end
    end

    def destroy
        @link = Link.find(params[:link_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
        flash[:notice] = "Comment successfully deleted!"
        redirect_to link_path(@comment.link)
    end


    private
    def comment_params
        params.require(:comment).permit(:username, :comment)
    end
end
