class ContactsController < ApplicationController

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            flash[:success] = "Votre message a bien été envoyé."
            redirect_to root_path
        else
            flash[:alert] = "Une erreur est survenue. Veuillez réessayer."
            redirect_to "/contact"
        end
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :email, :phone, :message)
    end

end