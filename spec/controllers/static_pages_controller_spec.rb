require 'spec_helper'

describe StaticPagesController do

  #No need to be logged in
  describe "get results with GoogleAJAX" do

    it "responds with success" do
      session[:ingredients] = ["whiskey", "coke", "lime"]
      xhr :post, :display_results
      expect(response).to be_success
    end


  end

  describe "adding an ingredient to the pool with AJAX" do

    it "responds with success" do
      xhr :post, :update_lists, params: {add: "whiskey"}
      expect(response).to be_success
    end


    it "increments the ingredient count" do

      expect do
        xhr :post, :update_lists, params: {add: "whiskey"}
      end.to change{session[:ingredients].count}.by(1)
    end
  end
   describe "AJAX functionality" do
    #let(:user) { FactoryGirl.create(:user) }
    #before { sign_in user, no_capybara: true }

    describe "add a favorite with AJAX"
      #Click on Favorite. Favorites.count should increment


  end



end
