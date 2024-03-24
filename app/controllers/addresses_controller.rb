class AddressesController < InheritedResources::Base
  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new address_params
    @customer = Customer.find(params[:customer_id])
  end

  def create
    #@customer = Customer.find(params[:customer_id])
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to customers_path, notice: 'Successfully added billing address.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end
    
  def address_params
    params.fetch(:address, {}).permit(:country, :city, :state, :address_line_1, :customer_id, :address_type)
  end

end
