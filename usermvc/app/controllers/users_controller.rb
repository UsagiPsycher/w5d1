class UsersController < ApplicationController
    
    def new
    end

    def create
      u = User.new
      u.username = params[:username]
      u.bio = params[:bio]

      if u.save
        redirect_to action: 'show', username: u.username
        
      else
        redirect_to action: 'errors'
      end

    end

    def show
      @usera = User.find_by(username: params[:username])
      
    end

    def errors
    end
  
  end