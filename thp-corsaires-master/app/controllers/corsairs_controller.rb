class CorsairsController < ApplicationController
  
  def new
  end

  def show
  end

  def edit
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      flash[:success] = "Welcome to the Corsairs crew!"
      redirect_to @corsair
    else
      render 'new'
    end
  end

  def update
  	@corsair.update
  	redirect_to @corsair
  end

  def destroy
  	@corsair.destroy
  	redirect_to @corsairs
  end

  def index
    @corsairs = Corsair.all
  end


  private

    def set_corsair
      @corsair = Corsair.find(params[:id])
    end

    def corsair_params
      params.require(:corsair).permit(:first_name, :age)
    end


end

=begin

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

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

  def show
    @corsair = Corsair.find(params[:id])
  end

  def new
    @corsair = Corsair.new
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @corsair
    else
      render 'new'
    end
  end

  private

    def corsair_params
      params.require(:corsair).permit(:name, :email, :password,
                                   :password_confirmation)
    end

=end