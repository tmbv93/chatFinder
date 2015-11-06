module UsersHelper

  def nearby_users
    User.nearby_users(current_user.username)
  end

end
