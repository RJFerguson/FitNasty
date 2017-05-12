class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signup_path
    end
  end

  def show
    
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      @user.update(user_params)
      redirect_to user_path
    else
      redirect_to edit_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
  end

  def progress_page
    @user = User.find(session[:user_id])
    if @user.user_weights.size == 0 
      flash[:notice] = "No Analytic Information Available"
      redirect_to profile_path
      
    end 
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :height, :start_weight, :gender, :goal_weight, :goal_date, :start_date, :password) #added height
  end

end
