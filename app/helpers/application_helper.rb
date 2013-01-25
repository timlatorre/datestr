module ApplicationHelper

  def show_dynamic_links
    if @auth
      link_to("Profile", profile_path) +
      link_to("(edit)", profile_edit_path) +
      link_to("Photos", photos_path) +
      link_to("(add)", photos_new_path) +
      link_to("Messages", messages_path) +
      link_to("Browse", browse_path) +
      link_to("Logout", logout_path)
    else
      link_to("Login", login_path) +
      link_to("Register", register_path) +
      link_to("About", about_path)
    end
  end
end