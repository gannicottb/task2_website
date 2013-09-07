require 'spec_helper'

describe "favorites/edit" do
  before(:each) do
    @favorite = assign(:favorite, stub_model(Favorite,
      :title => "",
      :link => ""
    ))
  end

  it "renders the edit favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => favorites_path(@favorite), :method => "post" do
      assert_select "input#favorite_title", :name => "favorite[title]"
      assert_select "input#favorite_link", :name => "favorite[link]"
    end
  end
end
