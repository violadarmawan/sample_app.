require 'spec_helper'

describe "StaticPages" do
  
  # Because ALL subject of these tests is the page, so by using `page`
  # variable provided by Capybara, we can eliminate the source duplication.
  subject { page }

  let(:base_title) { "Ruby on Rails Tutorial Sample App "}

  describe "Home page" do
    # To visit root_path before each example. It can also be invoked by
    # before(:each) --which is a synonym.
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) } #full_title method form spec/support/utilities.rb
    it { should_not have_title('| Home') }
  end
=begin  
  The code above behaves similarly to this:

    it "should have the content of 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
    
    it "should have the base_title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end

=end

  #Help Page
  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end
  
  #About Page
  describe "About page" do
    before { visit about_path }
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
  
  #Contact Us
  describe "Contact Us page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact Us')) }
  end
end
