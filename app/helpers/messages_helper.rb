module MessagesHelper
  def recipients_options(chosen_recipient = nil)
  s = ''
  User.all.each do |user|
    unless current_user == user
s << "<option value='#{user.id}' data-img-src='#{gravatar_image_url(user.email, size: 50)}' #{'selected' if user == chosen_recipient}>#{user.pseudo}</option>"
   end 
  end
  s.html_safe
end

end