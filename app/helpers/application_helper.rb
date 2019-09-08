module ApplicationHelper
  # ページのタイトルを取得
  def full_title(page_title='')
    base_title = 'MovieAppReview'
    if page_title.empty?
      base_title
    else
      page_title + '|' + base_title
    end
  end
end
