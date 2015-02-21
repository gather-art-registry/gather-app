require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :first_name_2 => "First Name 2",
      :last_name_2 => "Last Name 2",
      :username => "Username",
      :email => "Email",
      :email_2 => "Email 2",
      :phone => "Phone",
      :phone_2 => "Phone 2",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name 2/)
    expect(rendered).to match(/Last Name 2/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Email 2/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
  end
end
