require "rails_helper"

RSpec.feature "Hipster can sign in and out" do

  before { visit "/" }

  context "When user is not signed up and is on the homepage" do
    it "Should offer a sign in and sign up link to the user" do 
      expect(page).to have_content "Sign up"
      expect(page).to have_content "Log in"
      expect(page).to have_content "Sign in with Facebook"

    end
  
  end

  context "When user is signed in" do

    before {
      sign_up
       }

    it "Should be possible to sign out" do
      expect(page).to have_content "Sign out"
      click_link "Sign out"
      expect(page).to have_content "Sign up"
      expect(page).to have_content "Log in"
      expect(page).to have_content "Sign in with Facebook"
    end
  end

end
