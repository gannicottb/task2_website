require 'spec_helper'

describe StaticPagesController do

  #No need to be logged in
  describe "get results with GoogleAJAX" do
    #detect when the googlajax call is made?
    it "display results unless there are no ingredients yet" do
      expect do
       # xhr :post, :create, relationship: { followed_id: other_user.id }
      #end.to change(Relationship, :count).by(1)
      end
    end
    it "has results with titles" do
      #Look at the results and check to make sure that they're right.
    end

    it "has results with links" do
      #Look at the results and check to make sure that they're right.
    end
    it "has results with favorite buttons" do
      #Look at the results and check to make sure that they're right.
    end

  end





  #let(:user) { FactoryGirl.create(:user) }

  #before {sign_in user, no_capybara: true}

  describe "add a favorite with AJAX" do
    #Click on Favorite. Favorites.count should increment

  end


end
