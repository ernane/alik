class ArticleDecorator < Draper::Decorator
  delegate_all

  def month
    I18n.localize(source.published_at, format: "%b")
  end

  def day
    I18n.localize(source.published_at, format: "%d")
  end

  def created_at_short
    I18n.localize(source.published_at, format: :default)
  end

  def author_name
    source.author
  end

  def linked_title
    h.link_to source.name, h.blog_article_path(source)
  end

  def content_truncate
    h.simple_format h.truncate(source.content, length:  500)
  end

  def content_format
    h.simple_format source.content
  end

  def linked_read_more
    h.link_to h.blog_article_path(source), class: "btn btn-mini" do
      h.content_tag :i, I18n.t("general.read_more"), class: "icon-circle-arrow-right"
    end
  end
end
