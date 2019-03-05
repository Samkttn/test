module UserHelper

  def verify_user
    unless current_user.id == @user
      return true
  end
  end
end
