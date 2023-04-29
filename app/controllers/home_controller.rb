class HomeController < ApplicationController

    def contact 
        @pagename = "Contact"
    end

    def about 
        @pagename = "About"
    end

    def index
        @user = current_user
    end

end
