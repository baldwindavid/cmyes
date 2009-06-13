class WelcomeController < ApplicationController
  
  def index
    @children = ComatosePage.find_by_path('').children
  end
  
end