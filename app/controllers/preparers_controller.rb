class PreparersController < ApplicationController
  def index
    @preparers = Preparer.all
    @users = User.all

      if @preparers.blank?
        @preparer = Preparer.new
        redirect_to new_preparer_path
      else
        render :index
      end
  end

  def new
    @preparer = Preparer.new
  end

  def create
    @preparer = Preparer.new(preparer_params)
    if @preparer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @preparer = Preparer.find(params[:id])
  end

  def update
    @preparer = Preparer.find(params[:id])
    if @preparer.update(preparer_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def preparer_params
    params.require(:preparer).permit(:my_submitter, :my_director, :my_company,
      :my_Address, :my_phone_number, :my_fax_number
    ).merge(user_id: current_user.id)
  end
end
