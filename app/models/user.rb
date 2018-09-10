class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :comments
    has_many :movies
    has_many :ratings
    has_one_attached :profile_pic

    def self.getuser(user)
             user_name = user.name.split(' ')
              return user_name[0]
           end
end
