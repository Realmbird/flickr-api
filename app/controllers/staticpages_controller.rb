class StaticpagesController < ApplicationController
  def index
    if params[:user_id].present?
      flickr = Flickr.new ENV["flickr_api_key"], ENV["flickr_secret"]
      @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end
end
