class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.new(comment_params)
    @comments = @prototype.comments.includes(:user)
    if @comment.save
      redirect_to prototype_path(@prototype.id)
    else
      render template: "prototypes/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end
end
