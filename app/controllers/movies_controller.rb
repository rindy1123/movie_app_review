class MoviesController < ApplicationController
  
  # 映画一覧の表示
  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
  end
  

private
  # ストロングパラメーター
  def  movie_params
    params.require(:movie).permit(:title, :genre,
                                :description, :app, :review_score)
  end
end
