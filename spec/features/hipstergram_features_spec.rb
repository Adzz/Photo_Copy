require "rails_helper"

RSpec.feature "hipstergrams" do
  context "When no hipstergrams have been added" do

    scenario "It should display a prompt to upload an hipstergram" do
      visit "/hipstergrams"
      expect(page).to have_content "You got here before it was cool; no hipstergrams have been added"
      expect(page).to have_content "Upload new hipstergram"
    end
  end


  context "When hipstergram(s) have been added" do
    scenario "Displays uploaded hipstergrams" do
      visit "/"
    end
  end

end
