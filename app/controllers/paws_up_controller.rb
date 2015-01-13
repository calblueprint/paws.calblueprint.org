class PawsUpController < ApplicationController

  def create
    @paws_up = PawsUp.new(paws_up_params)
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
      @current_paws_up = PawsUp.where('created_at > ?', 1.week.ago).order('created_at DESC')
      @previous_paws_up = PawsUp.where('created_at < ?', 1.week.ago).order('created_at DESC')
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
