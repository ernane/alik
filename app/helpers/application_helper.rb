module ApplicationHelper
  def avatar_url(user,size)
    if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "#{root_url}assets/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=#{CGI.escape(default_url)}"
    end
  end
  
  def profile_user(user)
    content_tag :span, :class => "user_show" do
      link_to(image_tag(avatar_url(user, 70), :alt => user.username), user_path(user), :class => "avatar_show") +
      link_to(user.username, user_path(user), :class => "name_show")
    end
  end
  
  def profile_link(user)
    content_tag :span, :class => "user" do
      link_to(image_tag(avatar_url(user, 60), :alt => user.username), user_path(user), :class => "avatar", :rel =>  "popover", :"data-content" => user.profile_name, :"data-original-title" => user.username) +
      link_to(user.username, user_path(user), :class => "name")
    end
  end
  
  def header_question(question)
    content_tag :h2, :class => "question-header" do
      [ 
        question.requester_name,
          "de #{question.city.name}-#{question.state.name}, perguntou:"
      ].join(' ').html_safe
    end
  end
end
