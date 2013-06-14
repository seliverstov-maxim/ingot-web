class Web::Admin::ImagesController < Web::Admin::ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def edit
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      #success flash message
    else
      #failed flash message
  end

  def udate
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      #success flash message
    else
      #failed flash message
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end