class HomeController < ApplicationController

    def contact 
        @pagename = "Contact"
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
