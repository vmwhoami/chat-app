module ApplicationHelper

  def register_btn
    link_to  "Register", new_user_path, class:"item"  
  end

  def login_btn
  link_to  "Login", login_path,class:"item"   
  end
  def logout_btn
    
  end

end
