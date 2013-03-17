module LayoutHelper
  def flash_class(level)
    case level
    when :notice then "alert alert-success"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

  def flash_messages
    flash.collect do |key, value|
      content_tag :div, value, class: "#{flash_class(key)}"
    end.join.html_safe
  end

  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def analytics(site_id)
    html = <<-ANALYTICS
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '#{site_id}']);
        _gaq.push(['_trackPageview']);
        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    ANALYTICS

    html.html_safe
  end
end
