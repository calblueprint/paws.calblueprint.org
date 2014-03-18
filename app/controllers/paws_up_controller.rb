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

  private

  def paws_up_params
    params.require(:paws_up).permit(:user_id, :description, :custom_for)
  end

end
