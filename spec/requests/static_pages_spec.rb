require 'spec_helper'

describe "Static pages" do

    let(:content){"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have the title 'Home'" do
        visit '/static_pages/home'
        expect(page).to have_title("#{content} | Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_title("#{content} | Help")
    end
  end
  
  describe "About" do
      it "should have the content 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_content('About us')
      end
      it "should have the title 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_title("#{content} | About Us")
      end
  end
  
  describe "Contact" do
      it "should have the content 'Contact'" do
          visit '/static_pages/contact'
          expect(page).to have_content('Contact')
      end
      it "should have the title 'Contact'" do
          visit '/static_pages/contact'
          expect(page).to have_title("#{content} | Contact")
      end
  end
  
end
