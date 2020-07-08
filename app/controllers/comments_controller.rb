class CommentsController < ApplicationController

    def create
        # byebug
        @comment = Comment.new(comment_params)
        
        redirect_to post_path(@post_id)
        # if @comment.save
        #     flash[:notice] = ‘Comment was successfully created.’
            
        #     redirect_to(@comment.post)
        # else
        #     flash[:notice] = “Error creating comment: #{@comment.errors}”
            
        #     redirect_to(@comment.post)
        # end
    end


    def destroy
        @comment = Comment.find(params[:id])
        
        @comment.destroy
        
        redirect_to(@comment.post)
    end

    private

    def comment_params
        params.require(:comment).permit(:comment_body, :user_id)
    end



end
