

def sign_up
  FactoryGirl.create(:hipster)
end

def sign_in(user)
  click_link "Sign in"
  fill_in "hipstername", with: user.hipstername
  fill_in "password", with: user.password
  click_button "Log in"
end
