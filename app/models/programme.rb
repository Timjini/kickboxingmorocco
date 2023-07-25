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



end
