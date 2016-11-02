class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def login
    if (user = User.find_by(mail: params[:mail])) && user.authenticate(params[:password])
      session[:user_id] = user.id
      user.administrator? ?  (redirect_to  controller: :games, action: :index) : (render :text => "閲覧権限が有りません")
    else
      render :text => "パスワードまたはメールアドレスが異なります"
    end
  end

  def sign_in
    session[:user_id] ? (redirect_to controller: :games, action: :index) : (render '/users/sign_in')
  end

# POST /users
# POST /users.json
def create
  @user = User.new(user_params)

  respond_to do |format|
    if @user.save
      redirect_to :root
      session[:user_id] = @user.id
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

# PATCH/PUT /users/1
# PATCH/PUT /users/1.json
def update
  respond_to do |format|
    if @user.update(user_params)
      format.html { redirect_to @user, notice: 'User was successfully updated.' }
      format.json { render :show, status: :ok, location: @user }
    else
      format.html { render :edit }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /users/1
# DELETE /users/1.json
def destroy
  @user.destroy
  respond_to do |format|
    format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_user
  @user = User.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def user_params
  params.require(:user).permit(:mail, :password, :password_confirmation, :administrator)
end
end
