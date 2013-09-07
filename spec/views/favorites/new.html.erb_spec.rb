require 'spec_helper'

describe "favorites/new" do
  before(:each) do
    assign(:favorite, stub_model(Favorite,
      :title => "",
      :link => ""
    ).as_new_record)
  end

  it "renders new favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => favorites_path, :method => "post" do
      assert_select "input#favorite_title", :name => "favorite[title]"
      assert_select "input#favorite_link", :name => "favorite[link]"
    end
  end
end
