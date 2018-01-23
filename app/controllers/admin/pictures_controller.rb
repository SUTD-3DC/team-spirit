class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.valid?
      @picture.save
    else
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :project_id)
  end
end
