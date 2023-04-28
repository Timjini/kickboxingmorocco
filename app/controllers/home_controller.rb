class HomeController < ApplicationController

    def contact 
        @pagename = "Contact"
    end

    def about 
        @pagename = "About"
    end

    def index
        @post = Post.all
    end
end
