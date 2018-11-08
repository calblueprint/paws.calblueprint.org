class CycleController < ApplicationController

  def create
    Cycle.create
    redirect_to '/secret'
  end
end
