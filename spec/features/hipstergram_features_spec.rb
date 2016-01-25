require "rails_helper"

RSpec.feature "hipstergrams" do

  before { sign_up }
  
  context "When no hipstergrams have been added" do

    scenario "It should display a prompt to upload an hipstergram" do
      expect(page).to have_content "You got here before it was cool; no hipstergrams have been added"
      expect(page).to have_link "Upload new hipstergram"
    end
  end


  context "When an hipstergram has been added" do

    before { add_picture }
    
    scenario "An hipster can upload an hipstergram" do
       
        expect(page).to have_css 'img[src*=\'test.jpg\']'
        expect(page).to have_content 'Cold brew'
    end
    
   xscenario "Hipstergrams can be commented on" do

    end

    xscenario "If a hipstergram gets too many likes and becomes cool, it is automatically deleted" do

    end

    xscenario "Hipstergrams can be filtered to look good" do

    end

    context "Deleting hipstergrams"do

      xscenario "Only the hipster who uploaded the hipstergram can manually delete it." do

      end

      xscenario "When a hipstergram is deleted, all the likes go with it." do

      end

      xscenario "When a hipstergram is deleted, all the comments are deleted too" do

      end

    end


  end




end
