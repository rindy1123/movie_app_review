# Movie App Review

Amazon primeビデオ、Netflix, Huluで配信されているの映画のレビューサイト

## アプリの詳細
スクレイピングで集めた映画のデータをアプリ上で公開しています。
それぞれの映画にレビューと５点満点の点数をつけることができます。
映画一覧画面ではレビューで評価された点数が高い順に並べられているので、
人気のある映画をすぐ見つけることができます。
また、キーワード検索機能とジャンルの絞込み機能があり、見たい映画をすぐ見つけることができます。

## 開発環境
ruby 2.5.1
ruby on rails 5.2.1
HTML5  
CSS  
bootstrap 4.1.1

## git clone
```
$ git clone https://github.com/rindy1123/movie_app_review.git
```

## 開発環境構築

+ ソフトウェアアップデート
```
$ sudo yum update
```

+ rubyのバージョン設定
バージョン管理にはrvmを使用
ruby 2.5.1をインストール
```
$ rvm install 2.5.1
```
ruby 2.5.1をデフォルトに設定
```
$ rvm --default use 2.5.1
```
こちらのコードでrubyのバージョンが正しく設定されたか確認できます。
```
$ rvm list
```

+ railsのインストール
```
$ gem install rails -v 5.2.1 -N
```

+ データベースの設定
```
$ rails db:migrate

$ rails db:seed
```
このコマンドでcsvファイルに保存されている映画のデータを反映させることができます。

+ サーバーの起動
```
$ rails s
```
