class User < ActiveRecord::Base

  validates :username, uniqueness: true
  validates_presence_of :password, on: :create
  validates_confirmation_of :password

  def self.authenticate(username, password)

    user = User.find_by_username(username)

    if user && user.password == password
      return user

    else return nil

    end

  end

  def self.nearby_users(my_first_name)
    User.all.where.not(firstName: my_first_name)
  end


end
