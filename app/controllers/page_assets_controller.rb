class PageAssetsController < ApplicationController
  
  layout false

  def new
    @page_asset = PageAsset.new
  end

  def create
    @page_asset = PageAsset.new(params[:page_asset])

    respond_to do |format|
      if @page_asset.save
        flash[:notice] = 'Asset was successfully created.'
        format.html { redirect_to :back }
        format.js
      else
        format.html { render :action => "new" }
        format.js
      end
    end
  end


end
