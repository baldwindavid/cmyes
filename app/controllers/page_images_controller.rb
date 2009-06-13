class PageImagesController < ApplicationController
  
  layout false

  def new
    @page_image = PageImage.new
  end

  def create
    @page_image = PageImage.new(params[:page_image])

    respond_to do |format|
      if @page_image.save
        flash[:notice] = 'Image was successfully uploaded.'
        format.html { redirect_to :back }
        format.js
      else
        format.html { render :action => "new" }
        format.js
      end
    end
  end

end
