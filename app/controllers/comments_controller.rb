class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @trail = Trail.find(params[:trail_id])
    @trail.comments.create(comment_params.merge(user: current_user))
    redirect_to trail_path(@trail)
  end

  private

  def comment_params 
    params.require(:comment).permit(:message, :rating)
  end

end
