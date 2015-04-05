class Api::SecretController < ApplicationController
  
  def create
    #binding.pry    
  end

  private
  def valid_params
    params.require(:occultis_label).permit(:label, :value, :password)
  end
end
