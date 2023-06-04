class HomeController < ApplicationController

    def contact 
        @pagename = "Contact"
        @header_desc = "Contactez nous pour plus d'informations"
    end

    def about 
        @pagename = "À propos"
        @header_desc = "Kickboxing Morocco Club d'Agadir"
    end

    def index
        @user = current_user
    end

end
