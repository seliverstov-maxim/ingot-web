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
      redirect_to action: :index
    else
      #failed flash message
      render :new
    end
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      #success flash message
    else
      #failed flash message
    end
    redirect_to action: :edit
  end

  def destroy
    @image = Image.find(params[:id])
    
    if @image.destroy
      #success flash message
      redirect_to action: :index
    else
      #failed flash message
      redirect_to :back
    end
  end
end