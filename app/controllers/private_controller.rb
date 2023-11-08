class PrivateController < ApplicationController
    before_action :authenticate_user!
    
    def dashboard
        @users = User.all
        @workers= Worker.all
    end  
end 