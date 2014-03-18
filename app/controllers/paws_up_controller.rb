class PawsUpController < ApplicationController

  def create
    @paws_up = PawsUp.new(paws_up_params)
    if @paws_up.save
      redirect_to root_path, success: "Successfully sent Paws Up!"
    else
      redirect_to root_path, error: "There was a problem sending your Paws Up, please try again."
    end
  end

  private

  def paws_up_params
    params.require(:paws_up).permit(:user_id, :description)
  end

end