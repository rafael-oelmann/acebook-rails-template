require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email_address: "Email Address",
        password: "Password",
        first_name: "First Name",
        second_name: "Second Name",
        profile_picture: "Profile Picture"
      ),
      User.create!(
        email_address: "Email Address",
        password: "Password",
        first_name: "First Name",
        second_name: "Second Name",
        profile_picture: "Profile Picture"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Email Address".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Second Name".to_s, count: 2
    assert_select "tr>td", text: "Profile Picture".to_s, count: 2
  end
end
