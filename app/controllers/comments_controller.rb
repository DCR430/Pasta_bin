class CommentsController < ApplicationController

    def create
        # byebug
        @comment = Comment.create(comment_params)
        # byebug
        redirect_to post_path(@comment.post.id)
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
        params.require(:comment).permit!
    end



end
