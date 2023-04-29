class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached  :avatar

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize_to_fill: [40, 40]).processed
        else
      "/avatr.png"
    end
  end
end
