class PawsUpController < ApplicationController

  def create
    @paws_up = PawsUp.new(paws_up_params)
    @paws_up.cycle = Cycle.last
    if @paws_up.save
      flash[:success] = "Successfully sent your Paws Up!"
      redirect_to root_path
    else
      flash[:danger] = "There was a problem sending your Paws Up, please try again."
      redirect_to root_path
    end
  end

  def index
    if params[:secret].nil? || params[:secret] == ENV["secret"]
      @current_paws_up = PawsUp.where(cycle: Cycle.last).order(created_at: :desc)
      @previous_paws_up = PawsUp.where.not(cycle: Cycle.last).order(created_at: :desc)
    else
      flash[:danger] = "You are not allowed to view this page."
      redirect_to root_path
    end
  end

  private

  def paws_up_params
    params.require(:paws_up).permit(:user_id, :description, :custom_for, :value)
  end

end
