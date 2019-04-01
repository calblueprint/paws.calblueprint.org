class PagesController < ApplicationController

  def home
    @paws_up = PawsUp.new
  end

  def about
  end

  def neglect
    if params[:weeks].nil? 
      redirect_to '/neglected?weeks=2'
    else
      @weeks = [params[:weeks].to_i, Cycle.count - 1].min
      cycle_ids = Cycle.all.reverse_order[0, @weeks + 1].map {|c| c.id} 
      recipients = PawsUp.where(cycle_id: cycle_ids).map { |p| p.user_id}
      @neglected_bloopers = User.where.not(inactive: true, id: recipients)
    end
  end

end
