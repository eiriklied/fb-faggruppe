class PagesController < ApplicationController

  def home
    @me = client.selection.me.info!
  end
  
  def friends
    @friends = client.selection.me.friends.info!.data
  end
  
  def publish
    client.selection.me.feed.publish!(:message => params[:message]) if params[:message]
  end
end
