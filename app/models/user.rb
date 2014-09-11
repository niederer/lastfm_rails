class User < ActiveRecord::Base
  attr_accessible :username, :real_name, :profile_picture, :location, :age, :gender, :playcount
end
