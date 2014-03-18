class PagesController < ApplicationController

  def home
    @paws_up = PawsUp.new
  end

  def about
  end

end
