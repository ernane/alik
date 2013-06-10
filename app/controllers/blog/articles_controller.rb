class Blog::ArticlesController < ApplicationController
  def index
    @articles = ArticlesDecorator.decorate(ArticleFilter.lasted(params))
  end

  def show
    @article = ArticleDecorator.decorate(Article.find(params[:id]))
    @comment = Comment.new
    @comments  = CommentDecorator.decorate(@article.comments)
  end
end
