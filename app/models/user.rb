class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo


  def photo_thumbnail
    if photo.attached?
      photo.variant(resize_to_fill: [60, 60]).processed
        else
      "/kbm.png"
    end
  end

  def photo_url
    if photo.attached?
      rails_blob_path(photo, only_path: true)
    else
      "/kbm.png"
    end
  end
  
  

  def photo_profile 
    if photo.attached?
      photo
        else
      "kbm.png"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
