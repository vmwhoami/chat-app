module ApplicationHelper
  def register_btn
    link_to 'Register', new_user_path, class: 'item'
  end

  def login_btn
    link_to 'Login', login_path, class: 'item'
  end

  def menu_btns(current_user)
    if current_user
      link_to 'Logout', logout_path, method: :delete, class: 'item'
    else
      (link_to 'Login', login_path, class: 'item') +
        (link_to 'Register', new_user_path, class: 'item')
    end
  end
end
