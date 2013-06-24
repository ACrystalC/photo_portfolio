class PhotosController < ApplicationController
  def index
    @photos = Photo.all

    respond_to do |format|
      format.html 
      format.json { render json: @photos }
    end
  end

  def new
    @photo = Photo.new

    respond_to do |format|
      format.html 
      format.json { render json: @photo }
    end  
  end

  def create
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to root_url, notice: 'Photo added'}
        format.json
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity}  
      end
    end
  end 

end
