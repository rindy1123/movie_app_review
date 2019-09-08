# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "csv"
 
# # amazon prime 海外映画読み込み
# CSV.foreach('db/movie_data/amazon_prime.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'amazon_prime',
#                   movie_type: '海外映画'
#                   )
# end

# # hulu海外映画読み込み
# CSV.foreach('db/movie_data/hulu_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'hulu',
#                   movie_type: '海外映画'
#                   )
# end

# # Netflix海外映画読み込み
# CSV.foreach('db/movie_data/netflix_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'netflix',
#                   movie_type: '海外映画'
#                   )
# end

# # amazon prime 日本映画読み込み
# CSV.foreach('db/movie_data/amazon_prime_japanese.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'amazon_prime',
#                   movie_type: '日本映画'
#                   )
# end

# # hulu日本映画読み込み
# CSV.foreach('db/movie_data/hulu_japanese_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'hulu',
#                   movie_type: '日本映画'
#                   )
# end

# # Netflix日本映画読み込み
# CSV.foreach('db/movie_data/netflix_japanese_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'netflix',
#                   movie_type: '日本映画'
#                   )
# end

# # amazon prime アニメ読み込み
# CSV.foreach('db/movie_data/amazon_prime_anime.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'amazon_prime',
#                   movie_type: 'アニメ'
#                   )
# end

# # huluアニメ読み込み
# CSV.foreach('db/movie_data/hulu_anime_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'hulu',
#                   movie_type: 'アニメ'
#                   )
# end

# # Netflixアニメ読み込み
# CSV.foreach('db/movie_data/netflix_anime_scraping.csv', headers: true) do |row|
#   Movie.create(title: row['タイトル'],
#                   description: row['あらすじ'],
#                   genre: row['ジャンル'],
#                   app: 'netflix',
#                   movie_type: 'アニメ'
#                   )
# end