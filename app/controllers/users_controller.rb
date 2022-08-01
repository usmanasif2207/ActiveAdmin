class UsersController < InheritedResources::Base
  def create
    @user = User.new(user_params)
    
  end
  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
