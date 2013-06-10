class CommentDecorator < Draper::Decorator
  delegate_all

  def created
    I18n.localize(source.created_at, format: :short)
  end

  def name
    source.name
  end

  def content_format
    h.markdown source.content
  end

  def gravatar
    h.gravatar(source.email, class: "media-object img-polaroid span1")
  end
end