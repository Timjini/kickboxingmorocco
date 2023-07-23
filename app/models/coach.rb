class Coach < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached  :photo

  def photo_thumbnail
    if photo.attached?
      photo.variant(resize_to_fill: [60, 60]).processed
        else
       "/assets/user.png"
    end
  end

  def full_photo
    if photo.attached?
      photo
        else
       "/assets/user.png"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
