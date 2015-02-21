require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :first_name_2 => "MyString",
      :last_name_2 => "MyString",
      :username => "MyString",
      :email => "MyString",
      :email_2 => "MyString",
      :phone => "MyString",
      :phone_2 => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_first_name_2[name=?]", "user[first_name_2]"

      assert_select "input#user_last_name_2[name=?]", "user[last_name_2]"

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_email_2[name=?]", "user[email_2]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_phone_2[name=?]", "user[phone_2]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_state[name=?]", "user[state]"

      assert_select "input#user_zip[name=?]", "user[zip]"
    end
  end
end
