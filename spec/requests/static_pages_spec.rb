require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Task2 Website'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Task2 Website')
    end

    it "should have the base title"  do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => 'task2_website')
    end

    it "should not have a custom title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                      :text => ' | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'"  do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => 'task2_website | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    it "should have the title 'About'"  do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => 'task2_website | About')
    end
  end


end
