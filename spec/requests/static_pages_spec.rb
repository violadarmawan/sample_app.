require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App "}

  describe "Home page" do
    it "should have the content of 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
    
    it "should have the base_title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit'/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
  #Help Page
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  #About Page
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  #Contact Us
  describe "Contact Us page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end
end
