class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end

  end


  def show
    @user = User.find_by_id(params[:id]) #.find(params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

 #GET users/new
	def new
		@user = User.new
	end

	def create
		@user = User.new params[:user]
		if @user.save
			session[:user_id] = @user.id
      if @user.type_pilot == "girl"
        redirect_to root_url, :notice => 'Welcome!'
      else
        redirect_to tickets_url , :notice => 'Привет Байкер! Выбирай покатайку!'
      end

		else
			render 'new'
		end
	end
 


  

end

