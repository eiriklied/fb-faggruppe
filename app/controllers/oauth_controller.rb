class OauthController < ApplicationController
  def start
    redirect_to client.authorization.authorize_url(
      :redirect_uri => callback_oauth_index_url, 
      :scope => 'email,user_photos,friends_photos,user_photo_video_tags,publish_stream'
    )
  end
  
  def callback
    access_token = client.authorization.process_callback(params[:code], :redirect_uri => callback_oauth_index_url)
    session[:access_token] = access_token
    
    redirect_to home_url
  end
end
