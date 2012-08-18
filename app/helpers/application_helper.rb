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

  def show_user_helper(user)
    content =  "<p>"
    content << "<ul>"
    content << "<li><h3>#{user.username.upcase}</h3></li>"
    content << "<li>#{user.email}</li>"
    content << "</ul>"
    content << "</p>"
    raw content
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
