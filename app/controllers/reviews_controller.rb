class ReviewsController < ApplicationController
  
  # レビューの投稿
  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
    if @review.update(review_params)
      flash[:success] = '投稿が完了しました'
      redirect_to movie_path(@movie)
    else
      flash[:danger] = '正しく入力してください'
      redirect_to movie_path(@movie)
    end
  end
      
private
  # ストロングパラメーター
  def  review_params
    params.require(:review).permit(:name, :content, :score, :movie_id)
  end
end
