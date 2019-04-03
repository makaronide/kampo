class UsersController < ApplicationController

	def register
		@user = User.new
	end

	def create
    @user = User.new(params[:user])    # 実装は終わっていないことに注意!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

   private

    def user_params
      params.require(:user).permit(:email)
    end

end
