class Blog::ArticlesController < ApplicationController
  def index
    @articles = ArticlesDecorator.decorate(ArticleFilter.lasted(params))
  end

  def show
    @article = ArticleDecorator.decorate(Article.find(params[:id]))
  end
end
