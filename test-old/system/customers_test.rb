require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Company registration", with: @customer.company_registration
    fill_in "Email", with: @customer.email
    fill_in "Industry", with: @customer.industry_id
    fill_in "Landline", with: @customer.landline
    fill_in "Main contact", with: @customer.main_contact
    fill_in "Mobile", with: @customer.mobile
    fill_in "Name", with: @customer.name
    fill_in "Person responsible for payment", with: @customer.person_responsible_for_payment
    fill_in "Platform requirements", with: @customer.platform_requirements
    fill_in "Purpose of application", with: @customer.purpose_of_application
    fill_in "Vat number", with: @customer.vat_number
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Company registration", with: @customer.company_registration
    fill_in "Email", with: @customer.email
    fill_in "Industry", with: @customer.industry_id
    fill_in "Landline", with: @customer.landline
    fill_in "Main contact", with: @customer.main_contact
    fill_in "Mobile", with: @customer.mobile
    fill_in "Name", with: @customer.name
    fill_in "Person responsible for payment", with: @customer.person_responsible_for_payment
    fill_in "Platform requirements", with: @customer.platform_requirements
    fill_in "Purpose of application", with: @customer.purpose_of_application
    fill_in "Vat number", with: @customer.vat_number
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
