class Blog::CommentsController < ApplicationController
  before_filter :load_article

  def index
    @comments = @article.comments
  end

  def new
    @answer = article.comments.build
  end

  def create
    @comment = @article.comments.build(params[:comment])
    if @comment.save
      redirect_to [:blog, @article], notice: t("flash.comment.create.notice")
    else
      redirect_to [:blog, @article], alert: t("flash.comment.create.error")
    end
  end

private

  def load_article
    @article = Article.find(params[:article_id])
  end
end