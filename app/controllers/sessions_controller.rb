class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:username], params[:password])

    if user
      log_in user
      redirect_to root_path, notice: 'Du er logget inn!'
    else
      flash.now.alert = 'Ugyldig brukernavn og/eller passord'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: 'Du er logget ut'
  end

end
