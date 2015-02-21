require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
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
      ),
      User.create!(
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
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name 2".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name 2".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Email 2".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 2".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
