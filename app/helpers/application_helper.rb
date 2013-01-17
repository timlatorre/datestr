module ApplicationHelper
  def show_dynamic_links
    if @auth
      "Welcome," @auth.name
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
    end
  end
end