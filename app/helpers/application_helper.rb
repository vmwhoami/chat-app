module ApplicationHelper

  def login_btn
    link_to  "Register", new_user_path, class:"item"  if !logged_in?
  end

end
