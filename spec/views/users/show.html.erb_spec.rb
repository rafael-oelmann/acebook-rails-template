require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email_address: "Email Address",
      password: "Password",
      first_name: "First Name",
      second_name: "Second Name",
      profile_picture: "Profile Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/Profile Picture/)
  end
end
