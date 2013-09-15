require 'spec_helper'


#As used in Michael Hartl's Ruby on Rails Tutorial -->
describe "StaticPages" do
  subject {page}

  describe "Home page" do
    before{ visit root_path}
    it {should have_selector('title', text: 'task2_website')}
    it {should_not have_selector('title', text: ' | Home')}


  end

  describe "Help page" do
    before{ visit help_path}

    it {should have_selector('h1', text: 'Help')}
    it {should have_selector('title', text: 'task2_website | Help')}

  end

  describe "About page" do
    before{visit about_path}

    it {should have_selector('h1', text: 'About')   }
    it {should have_selector('title', text: "task2_website | About")}

  end

  describe "Account page" do
    before {visit account_path}
    it {should have_selector('h1', text: 'Account')}
    it {should have_selector('title', text: "task2_website | Account")}

  end





end
