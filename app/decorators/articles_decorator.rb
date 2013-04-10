class ArticlesDecorator < Draper::CollectionDecorator
  delegate :created_at, :current_page, :total_pages, :limit_value, :name, :id, :content, :author

  def month
    I18n.localize(source.published_at, format: "%b")
  end

  def day
    I18n.localize(source.published_at, format: "%d")
  end

  def created_at_short
    I18n.localize(source.published_at, format: :short)
  end

  def author_name
    source.author
  end

  def linked_title
    h.link_to source.name, source
  end

  def content_truncate
    h.markdown h.truncate(source.content, length:  500)
  end

  def content_format
    h.markdown source.content
  end

  def linked_read_more
    h.link_to source, class: "btn btn-mini" do
      h.content_tag :i, I18n.t("general.read_more"), class: "icon-circle-arrow-right"
    end
  end
end
