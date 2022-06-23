class UsersController < ApplicationController

  def index
    @users = User.all
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :test_date)
    end
end
