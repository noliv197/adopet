class ApplicationController < ActionController::Base
    before_action :set_socials, only: [:index]
    
    def set_socials
        @socials = Social.all
    end

end
