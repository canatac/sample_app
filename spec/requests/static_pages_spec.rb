require 'spec_helper'

describe "Static pages" do


  describe "Home page" do
      before{visit root_path}
      subject{page}
      it{should have_content('Sample App')}
      it{should have_title(full_title(''))}
      it{should_not have_title(' | Home')}
      #it "should have the content 'Sample App'" do
        
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #visit root_path
      #expect(page).to have_content('Sample App')
      #end
    
    #it "should have the title 'Home'" do
        # visit root_path
        #   expect(page).to have_title("#{content}")
        #end
    
    #it "should not have a custom page title" do
        #visit root_path
        #  expect(page).not_to have_title(" | Home")
        # end
    
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
        visit help_path
        expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
        visit help_path
        expect(page).to have_title(full_title('Help'))
    end
  end
  
  describe "About" do
      it "should have the content 'About Us'" do
          visit about_path
          expect(page).to have_content('About us')
      end
      it "should have the title 'About Us'" do
          visit about_path
          expect(page).to have_title(full_title('About Us'))
      end
  end
  
  describe "Contact" do
      it "should have the content 'Contact'" do
          visit contact_path
          expect(page).to have_content('Contact')
      end
      it "should have the title 'Contact'" do
          visit contact_path
          expect(page).to have_title(full_title('Contact'))
      end
  end
  
end
