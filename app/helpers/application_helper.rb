module ApplicationHelper
  def show_dynamic_links
    if @authenticated_user 
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
    end
  end
end