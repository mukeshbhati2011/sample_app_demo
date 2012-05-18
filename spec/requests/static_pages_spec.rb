require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    # This helps to tell that before each test visit root page.
    before { visit root_path }

    #it "should have the h1 'Sample App'" do
     # page.should have_selector('h1', :text => 'Sample App Demo')
    #end

    it { should have_selector('h1', :text => 'Sample App Demo') }
    it { should have_selector('title', :text => full_title('Home')) }

    #it "should have the title 'Home'" do
      #visit root_path
      #page.should have_selector('title',
       #                 :text => "Ruby on Rails Tutorial Sample App | Home")
    #end

  end

  describe "Help page" do
    before {visit help_path}

    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title('Help')) }


    #it "should have the h1 'Help'" do
      #visit help_path
      #page.should have_selector('h1', :text => 'Help')
    #end

    #it "should have the title 'Help'" do
      #visit help_path
      #page.should have_selector('title',
       #                 :text => "Ruby on Rails Tutorial Sample App | Help")
    #end
  end

  describe "About page" do

    before {visit about_path}

    it { should have_selector('h1', :text => 'About Us') }
    it { should have_selector('title', :text => full_title('About Us')) }


    #it "should have the h1 'About Us'" do
     # visit about_path
      #page.should have_selector('h1', :text => 'About Us')
    #end

    #it "should have the title 'About Us'" do
     # visit about_path
      #page.should have_selector('title',
       #             :text => "Ruby on Rails Tutorial Sample App | About Us")
    #end
  end

  describe "Contact page" do

    before {visit contact_path}

    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => full_title('Contact')) }


    #it "should have the h1 'Contact'" do
     # visit contact_path
      #page.should have_selector('h1', text: 'Contact')
    #end

    #it "should have the title 'Contact'" do
     # visit contact_path
      #page.should have_selector('title',
       #             text: "Ruby on Rails Tutorial Sample App | Contact")
    #end
  end
end