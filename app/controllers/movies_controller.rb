class MoviesController < ApplicationController
  
  # 映画一覧の表示
  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    reviews = Review.where(movie_id: params[:id])
    total_score = 0
    if reviews.length > 0
      reviews.each do |review|
        total_score += review.score
      end
      average_score = total_score / reviews.length
      @movie.review_score = average_score.round(1)
      @movie.save
    else
      @movie.review_score = 0
      @movie.save
    end
  end
  

private
  # ストロングパラメーター
  def  movie_params
    params.require(:movie).permit(:title, :genre,
                                :description, :app, :review_score)
  end
end
