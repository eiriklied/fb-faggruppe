class ApplicationController < ActionController::Base
  protect_from_forgery

  def client
    @client ||= FBGraph::Client.new(:client_id => 'xxx',
                                   :secret_id => 'xxx' , 
                                   :token => session[:access_token])
  end
end
