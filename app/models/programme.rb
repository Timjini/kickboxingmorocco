class Programme < ApplicationRecord

    has_one_attached :image


    def image_cover
        if image.attached?
            image
        else
            "/assets/user.png"
        end
    end

    STATUS_OPTIONS = [
    ["Actif", "1"],
    ["Inactif", "0"]
  ]
    
    GROUPES = [
        ["Adultes", "Adultes"],
        ["Enfants", "Enfants"],
    ]

   JOURS = [
    ["Lundi", "Lundi"],
    ["Mardi", "Mardi"],
    ["Mercredi", "Mercredi"],
    ["Jeudi", "Jeudi"],
    ["Vendredi", "Vendredi"],
    ["Samedi", "Samedi"],
    ["Dimanche", "Dimanche"]
  ]

  def time
    if heure.present?
    time_hash_string = self.heure
        time_hash = eval(time_hash_string)
        # Extract the components from the hash
        year = time_hash[1]
        month = time_hash[2]
        day = time_hash[3]
        hour = time_hash[4]
        minute = time_hash[5]

        # Create a valid time object using Time.new
        time_object = Time.new(year, month, day, hour, minute)

        # Format the time object using strftime
        time_object.strftime("%H:%M")
    end

  end



end
