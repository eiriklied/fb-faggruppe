class ApplicationController < ActionController::Base
  protect_from_forgery

  def client
    @client ||= FBGraph::Client.new(:client_id => '161947993845262',
                                   :secret_id => '73eebc4fc79bde10042e6c5518debc59' , 
                                   :token => session[:access_token])
  end
end
