class User::ReviewCommentsController < ApplicationController
  
  def create
    @review = Review.find(params[:review_id])
    comment = current_user.review_comments.new(review_comment_params)
    comment.review_id = @review.id
    comment.save
    @review_comment = ReviewComment.new
    render :comment
  end
  
  def destroy
    @review = Review.find(params[:review_id])
    ReviewComment.find(params[:id]).destroy
    render :comment
  end
  
  private
  
  def review_comment_params
    params.require(:review_comment).permit(:comment)
  end
  
end
