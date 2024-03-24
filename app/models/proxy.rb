class Proxy < ApplicationRecord
    
    cattr_accessor :form_steps do
        %w(proxy_giver proxy_receiver)
    end

    attr_accessor :form_step

    def form_step
        @form_step ||= 'proxy_giver'
    end

    validates :firstname, :lastname, :member_number, presence: true,
		  if: -> { required_for_step?(:proxy_giver)}

    validates :proxy_firstname, :proxy_lastname, :proxy_member_number, presence: true,
		  if: -> { required_for_step?(:proxy_receiver)}

    def required_for_step?(step)
        # All fields are required if no form step is present
        form_step.nil?
      
        # All fields from previous steps are required if the
        # step parameter appears before or we are on the current step
        self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
      end
end
