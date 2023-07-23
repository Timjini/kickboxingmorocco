class Programme < ApplicationRecord

    def status
        if self.status == "1"
            return "Actif"
        else
            return "Inactif"
        end
    end

    def type
        if self.type == "1"
            return "Adulte"
        else
            return "Enfant"
        end
    end

    def jour
        if self.jour == "1"
            return "Lundi"
        elsif self.jour == "2"
            return "Mardi"
        elsif self.jour == "3"
            return "Mercredi"
        elsif self.jour == "4"
            return "Jeudi"
        elsif self.jour == "5"
            return "Vendredi"
        elsif self.jour == "6"
            return "Samedi"
        elsif self.jour == "7"
            return "Dimanche"
        end
    end


end
