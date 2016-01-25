require "rails_helper"

RSpec.feature "Likes on hipstergrams" do
 
  before { 
    sign_up
    add_picture            
  }

  scenario "A user can like an hipstergram, before it gets cool.", js: true do
    visit "/hipstergrams"
    click_link "Like it before it is cool"
    expect(page).to have_content("1 Like")
  end

  scenario "A user can only like a photo once." do
    visit "/hipstergrams"
    2.times{ click_link "Like it before it is cool"}
    expect(page).not_to have_content("2 Likes")
    expect(page).to have_content("0 Likes")
  end

  xscenario "When the number of likes on a hipstergram == MAX_LIKES, the hipstergram is deleted" do
  end


end
