class CommentsController < ApplicationController


  def create
    @comment  = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if(@comment.save!)
     redirect_to movie_path(@comment.movie_id)
    end
  end

  private

  def comment_params
  params.require(:comment).permit(:content , :movie_id)
  end

end
