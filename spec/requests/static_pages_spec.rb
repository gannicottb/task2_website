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
    it {should have_selector('title', text: 'task2_website | About')}

  end

  describe "Account page" do
    before {visit account_path}
    it {should have_selector('h1', text: 'Account')}
    it {should have_selector('title', text: "task2_website | Account")}

  end

  describe "Favorite button shouldn't do anything if you're not logged in" do
    #let(:user) {FactoryGirl.create(:user)}
    #before {visit root_path(user)}
   #before{visit root_path}
    #expect { click_button "Favorite" }.not_to change(Favorite, :count)

  end

  describe "puts the new ingredient in the pool when you click add" do
    before do
      visit root_path
      fill_in "addIngredient", with: "whiskey"
      click_on "Add"
    end

      #verify that the pool of ingredients has the thing that was just added
      it {should have_selector("li", text: "whiskey")}

  end




end
