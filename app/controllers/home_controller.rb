class HomeController < ApplicationController

    def contact 
        @pagename = "Contact"

        @contact = Contact.new
    end

    def create_contact
        @contact = Contact.new(params.require(:contact).permit(:name, :email, :phone, :message))

        if @contact.save
            flash[:notice] = "Votre message a bien été envoyé."
            redirect_to root_path
        else
            flash[:alert] = "Une erreur est survenue. Veuillez réessayer."
            redirect_to root_path
        end
    end

    def about 
        @pagename = "About"
    end

    def enquete
        @pagename = "Enquete"
    end

    def merci
    end

end
