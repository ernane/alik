module ApplicationHelper
  def cities(state)
    City.where("state_id = ?", state)
  end

  def avatar_image(user)
    default_url = "#{root_url}assets/guest.png"
    if user.image.present?
      link_to image_tag(user.image_url(:thumb)), user_path(user)
    else
      link_to image_tag(default_url), user_path(user)
    end
  end

  def avatar_image_thumb(user)
    if user.image.present?
      user.image_url(:thumb)
    else
      default_url = "#{root_url}assets/guest.png"
    end
  end

  def avatar_image_medium(user)
    if user.image.present?
      user.image_url(:medium)
    else
      default_url = "#{root_url}assets/guest.png"
    end
  end
end
