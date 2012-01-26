class CommentsController < ApplicationController
  # TODO do authentication for this controller.

  def create
    @comment = Comment.new(params[:comment])
    @comment.post = Post.find(params[:post_id])
    if @comment.save
      redirect_to @comment.post, :flash => { success: "Comment created." }
    else
      redirect_to @comment.post, error: "Couldn't create comment.'"
    end
  end

  def destroy
    # TODO check for current_user
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to @comment.post, :flash => { error: "Comment deleted." }
    else
      redirect_to @comment.post, error: "Comment was not deleted."
    end
  end
end
