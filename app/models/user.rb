class User < ApplicationRecord
  followability
  has_one_attached :profile_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def unfollow(user)
    followerable_relationships.where(followable_id: user.id).destroy_all
  end
end
