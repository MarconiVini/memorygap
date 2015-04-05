class Api::SecretController < ApiController
  
  def create
    #binding.pry
    render nothing: true, status: 200, content_type:'text/html'    
  end

  private
  def valid_params
    params.require(:occultis_label).permit(:label, :value, :password)
  end
end
