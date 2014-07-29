module ApplicationHelper

def markdown(text)
  options = {
    :autolink => true,
    :space_after_headers => true,
    :no_intra_emphasis => true
  }
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
  markdown.render(text).html_safe
end

def avatar_for(user, options = { size:50})
	avatar_id = Digest::MD5::hexdigest(user.email.downcase)
	"https://seccdn.libravatar.org/avatar/#{avatar_id}.png"
end

end
