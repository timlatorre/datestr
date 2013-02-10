module ApplicationHelper

  def show_dynamic_links
    if @auth
      link_to("Profile", profile_path, :class => 'four columns nav-btn') +
      link_to("Messages", messages_path, :class => 'four columns nav-btn') +
      link_to("Browse", browse_path, :class => 'four columns nav-btn')
    else
      link_to("Login", login_path) +
      link_to("Register", register_path)
    end
  end
end