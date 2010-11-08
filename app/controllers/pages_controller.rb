class PagesController < ApplicationController

  def home
    @me = client.selection.me.info!
  end
end
