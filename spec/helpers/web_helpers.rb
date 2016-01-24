def sign_in
  FactoryGirl.create(:hipster)
  click_link "Sign in"
  fill_in "email", with: "test@test.com"
  fill_in "password", with: 12345678
  click_button "Log in"
end
