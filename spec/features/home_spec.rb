require 'spec_helper'

describe "Test Home page functionality" do
  subject {page}
  before(:each) do
    visit root_path
    fill_in :add, with: "whiskey"
    click_on "Add"
  end

  #verify that the pool of ingredients has the thing that was just added
  it  "puts the new ingredient in the pool when you click add" do
    expect(page).to have_selector("li", text: "whiskey")
  end

  #verify that there are no duplicates in the ingredient pool
  it "does not accept duplicates" do
    fill_in :add, with: "whiskey"
    click_on "Add"
    within("ul#ingredient_pool") do
      expect(all('li', text: "whiskey").count).to equal(1)
    end
  end

   it "does not accept blank submissions" do
      fill_in :add, with: ""
      expect{click_on "Add"}.to_not change {all(:xpath, "//ul[@id='ingredient_pool']/li").count}.by(1)

   end

    #describe "Favorite button shouldn't do anything if you're not logged in" do
    #  #let(:user) {FactoryGirl.create(:user)}
    #  #before {visit root_path(user)}
    #  #before{visit root_path}
    #  #expect { click_button "Favorite" }.not_to change(Favorite, :count)
    #
    #end



    describe "Google results display properly" do
      it "results have titles" do
        within('div#results') do
          expect(all(:xpath, './/li/a')).to have_text
        end
      end
      #it "results have favorite buttons" do
      #
      #end

      end

    #
    #  it "results have links" do
    #    #Look at the results and check to make sure that they're right.
    #  end
    #
    #end
end #container