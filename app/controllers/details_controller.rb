class DetailsController < ApplicationController
    def index
    end
    def create
        @user = User.new(name: params[:name], email: params[:email])
        @user.save!
        respond_to do |format|
            format.html { redirect_to '/details', notice: 'User was successfully created.' }
            format.js { redirect_to '/details'}
        end 
    end
    def show
    end
    def new
    end
end
