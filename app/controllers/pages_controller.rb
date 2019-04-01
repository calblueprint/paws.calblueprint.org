class PagesController < ApplicationController

  def home
    @paws_up = PawsUp.new
  end

  def about
  end

  def neglect
    cycle_ids = Cycle.all.reverse_order[1, 3].map {|c| c.id} 
    recipients = PawsUp.where(id: cycle_ids).map { |p| p.user_id}
    @neglected_bloopers = User.where.not(inactive: true, id: recipients)
  end

end
