class ImagesController < ApplicationController
  def index
    page = Mechanize.new.get "https://www.google.co.jp/search?q=#{params[:q]}&bm=isch"
    image_path = page.at().get_attribute :src
    render json: [ image_path: image_path ]
  end
end

