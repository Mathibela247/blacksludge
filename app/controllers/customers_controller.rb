class CustomersController < InheritedResources::Base
  # before_action :authenticate_user!
  layout 'package'
  
  def index
    @customers = Customer.all
    @customer_address = Address.find_by_customer_id(@customers)
  end

  def new
    @customer = Customer.new
    @package = Package.find(params[:package_id])
  end

  def create
    @package = Package.find(params[:package_id])
    @customer = @package.customers.build(customer_params)
    respond_to do |format|
      if @customer.save
        session[:customer_id] = @customer.id
        format.html { redirect_to  new_user_path, notice: 'Account successfully created!'}
      else
        redirect_to root_path
      end
    end
  end

  def show
    @customer = Customer.find(params[:id])
    @customer_address = Address.find_by_customer_id(@customer.id)
  end
  
  private

    def customer_params
      params.require(:customer).permit(:name, :email, :landline, :mobile, :industry_id, :company_registration, :vat_number, :customer_type_id, :package_id, :main_contact, :person_responsible_for_payment, :platform_requirements)
    end

end
