class AnswerDecorator < Draper::Decorator
  delegate_all

  def linked_username
    h.link_to source.user.username, h.user_path(source.user)
  end

  def evaluation_content_tag_i
    if source.evaluation.nil?
      h.content_tag :i, nil, class: "icon-asterisk"
    elsif source.evaluation == "useful"
      h.content_tag :i, nil, class: "icon-thumbs-up"
    else
      h.content_tag :i, nil, class: "icon-thumbs-down"
    end
  end

  def evaluation
    if source.evaluation.nil?
      "Nao avaliada"
    elsif source.evaluation == "useful"
      "Resposta util"
    else
      "Nao ajudou"
    end
  end

  def description_format
    h.simple_format source.description
  end

  def published_at
    I18n.localize(source.created_at, :format => :short)
  end

  def linked_user_image
    h.link_to h.image_tag(h.avatar_image_medium(source.user), class: "media-object img-polaroid"), h.user_path(source.user), class: "span1"
  end
end
