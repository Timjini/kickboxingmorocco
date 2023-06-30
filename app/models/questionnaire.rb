class Questionnaire < ApplicationRecord

    enum satisfaction: {
        insatisfait: "Insatisfait",
        legerement_insatisfait: "Légèrement insatisfait",
        neutre: "Neutre",
        satisfait: "Satisfait",
        tres_satisfait: "Très Satisfait"
      }

    enum qualite: {
        mediocre: "Médiocre",
        moyenne: "Moyenne",
        bonne: "Bonne",
        excellente: "Excellente"
        }

    enum attention: {
        plasir: "Je le fais pour le plaisir et mon bien être",
        competitions: "Je souhaite participer à des compétitions"
        }

    enum tendance: {
        absolument: "Absolument",
        jamais: "Jamais"
        }

    VALUES = %i[technique discipline_et_controle_de_soi force_et_endurance competence_d_auto_defense amelioration_de_la_confiance_en_soi activites_amusantes autre]

    validates :satisfaction, presence: true
    validates :qualite, presence: true

end
