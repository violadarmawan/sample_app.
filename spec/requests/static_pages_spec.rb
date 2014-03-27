require 'spec_helper'

describe "StaticPages" do
  
  # Because ALL subject of these tests is the page, so by using `page`
  # variable provided by Capybara, we can eliminate the source duplication.
  subject { page }

  # Method shared_examples_for by RSpec
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) } #full_title method form spec/support/utilities.rb
  end

  describe "Home page" do
    # To visit root_path before each example. It can also be invoked by
    # before(:each) --which is a synonym.
    before { visit root_path }

    let(:heading)   { 'Sample App' }
    let(:page_title){ '' }

    it_should_behave_like "all static pages"
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

    let(:heading)   { 'Help' }
    let(:page_title){ 'Help' }

    it_should_behave_like "all static pages"
  end
  
  #About Page
  describe "About page" do
    before { visit about_path }
  
    let(:heading)   { 'About' }
    let(:page_title){ 'About Us' }

    it_should_behave_like "all static pages"
  end

  #Contact Us
  describe "Contact Us page" do
    before { visit contact_path }
    
    let(:heading)   { 'Contact' }
    let(:page_title){ 'Contact Us' }

    it_should_behave_like "all static pages"
  end

  # Test for links on the output
  it "should have the right links on the output" do
    visit root_path
    
    click_link "About"
    expect(page).to have_title(full_title('About Us'))

    click_link "Help"
    expect(page).to have_title(full_title('Help'))

    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))

    click_link "Home"
    expect(page).to have_title(full_title(''))

    click_link "Sign in"
    expect(page).to have_title(full_title('Sign up'))

    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
end
