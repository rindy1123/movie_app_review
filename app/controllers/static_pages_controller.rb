class StaticPagesController < ApplicationController
  def show_foreign_amazonprime
    show_amazon_prime('海外映画')
  end

  def show_foreign_netflix
    show_netflix('海外映画')
  end

  def show_foreign_hulu
    show_hulu('海外映画')
  end

  def show_japanese_amazonprime
    show_amazon_prime('日本映画')
  end

  def show_japanese_netflix
    show_netflix('日本映画')
  end

  def show_japanese_hulu
    show_hulu('日本映画')
  end
  
  def show_anime_amazonprime
    show_amazon_prime('アニメ')
  end
  
  def show_anime_netflix
    show_netflix('アニメ')
  end
  
  def show_anime_hulu
    show_hulu('アニメ')
  end
  
  # レビューの点数の計算
  def calculate_score(movies)
    movies.each do |movie|
      total_score = 0
      reviews = Review.where(movie_id: movie.id)
      if reviews.length > 0
        reviews.each do |review|
          total_score += review.score
        end
        average_score = total_score / reviews.length
        movie.review_score = average_score.round(1)
        movie.save
      else
        movie.review_score = 0
        movie.save
      end
    end
  end
  
  # アマゾンプライムのデータを取得
  def show_amazon_prime(movie_type)
    if params[:search].nil? # 検索していない場合
      @movies = Movie.where(app: 'amazon_prime', movie_type: movie_type).paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:title] && params[:search][:genre] == '' # タイトルのみ検索している場合
      @movies = Movie.where(app: 'amazon_prime', movie_type: movie_type).where("title LIKE ?", "%#{params[:search][:title]}%")
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:genre] && params[:search][:title] == '' # ジャンルで検索している場合
      @movies = Movie.where(app: 'amazon_prime', movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    else # ジャンルとタイトル両方で検索している場合
      @movies = Movie.where(app: 'amazon_prime', movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .where("title LIKE ?", "%#{params[:search][:title]}%").paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    end
    calculate_score(@movies)
  end
  
  # Netflixのデータを取得
  def show_netflix(movie_type)
    if params[:search].nil? # 検索していない場合
      @movies = Movie.where(app: 'netflix', movie_type: movie_type).paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:title] && params[:search][:genre] == '' # タイトルのみ検索している場合
      @movies = Movie.where(app: 'netflix', movie_type: movie_type).where("title LIKE ?", "%#{params[:search][:title]}%")
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:genre] && params[:search][:title] == '' # ジャンルで検索している場合
      @movies = Movie.where(app: 'netflix', genre: "#{params[:search][:genre]}", movie_type: movie_type)
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    else # ジャンルとタイトル両方で検索している場合
      @movies = Movie.where(app: 'netflix', genre: "#{params[:search][:genre]}", movie_type: movie_type)
      .where("title LIKE ?", "%#{params[:search][:title]}%").paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    end
    calculate_score(@movies)
  end
  
  # Huluのデータを取得
  def show_hulu(movie_type)
    if params[:search].nil? # 検索していない場合
      @movies = Movie.where(app: 'hulu', movie_type: movie_type).paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:title] && params[:search][:genre] == '' # タイトルのみ検索している場合
      @movies = Movie.where(app: 'hulu', movie_type: movie_type).where("title LIKE ?", "%#{params[:search][:title]}%")
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    elsif params[:search][:genre] && params[:search][:title] == '' # ジャンルで検索している場合
      @movies = Movie.where(app: 'hulu', movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    else # ジャンルとタイトル両方で検索している場合
      @movies = Movie.where(app: 'hulu', movie_type: movie_type).where("genre LIKE ?", "%#{params[:search][:genre]}%")
      .where("title LIKE ?", "%#{params[:search][:title]}%").paginate(page: params[:page], per_page: 9).order(review_score: :desc)
    end
    calculate_score(@movies)
  end
  
end
