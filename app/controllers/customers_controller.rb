class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    @users = User.all

    if @customers.blank?
      @customer = Customer.new
      redirect_to new_customer_path
    else
      render :index
    end
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:cust_contact, :cust_director, :cust_company,
      :cust_Address, :cust_phone_number, :cust_fax_number
    ).merge(user_id: current_user.id)
  end
end
