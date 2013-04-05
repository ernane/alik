class ArticleFilter
  def self.lasted(params = {})
    scope = Article.lasted
    scope = scope.page(params[:page]).per(10)
    scope
  end
end
