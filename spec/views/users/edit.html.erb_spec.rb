require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email_address: "MyString",
      password: "MyString",
      first_name: "MyString",
      second_name: "MyString",
      profile_picture: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[email_address]"

      assert_select "input[name=?]", "user[password]"

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[second_name]"

      assert_select "input[name=?]", "user[profile_picture]"
    end
  end
end
