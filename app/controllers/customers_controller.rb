class CustomersController < InheritedResources::Base
  before_action :authenticate_user!
  layout 'dashboard'
  
  def index
    @customers = Customer.all
    @customer_address = Address.find_by_customer_id(@customers)
  end

  def show
    @customer = Customer.find(params[:id])
    @customer_address = Address.find_by_customer_id(@customer.id)
  end
  
  private

    def customer_params
      params.require(:customer).permit(:name, :email, :landline, :mobile, :industry_id, :company_registration, :vat_number, :customer_type_id, :main_contact, :person_responsible_for_payment, :platform_requirements)
    end

end
