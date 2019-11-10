class StaticPagesController < ApplicationController
  def show_foreign_amazonprime
    show_movie('amazon_prime', '海外映画')
  end

  def show_foreign_netflix
    show_movie('netflix', '海外映画')
  end

  def show_foreign_hulu
    show_movie('hulu', '海外映画')
  end

  def show_japanese_amazonprime
    show_movie('amazon_prime', '日本映画')
  end

  def show_japanese_netflix
    show_movie('netflix', '日本映画')
  end

  def show_japanese_hulu
    show_movie('hulu', '日本映画')
  end
  
  def show_anime_amazonprime
    show_movie('amazon_prime', 'アニメ')
  end
  
  def show_anime_netflix
    show_movie('netflix', 'アニメ')
  end
  
  def show_anime_hulu
    show_movie('hulu', 'アニメ')
  end
  
  
# 映画の一覧表示
  def show_movie(app, movie_type)
    if params[:search].nil? # 検索していない場合
      @movies = Movie.where(app: app, movie_type: movie_type).order(review_score: :desc)
    elsif params[:search][:title] && params[:search][:genre] == '' # タイトルのみ検索している場合
      @movies = Movie.where(app: app, movie_type: movie_type).where("title LIKE ?", "%#{params[:search][:title]}%")
      .order(review_score: :desc)
    elsif params[:search][:genre] && params[:search][:title] == '' # ジャンルで検索している場合
      @movies = Movie.where(app: app, movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .order(review_score: :desc)
    else # ジャンルとタイトル両方で検索している場合
      @movies = Movie.where(app: app, movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .where("title LIKE ?", "%#{params[:search][:title]}%").order(review_score: :desc)
    end
  end
  
end
