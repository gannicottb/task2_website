require 'spec-helper'

describe "User pages" do

  subject {page}

  describe "account page" do
    let(:user) {FactoryGirl.create(:user)}
    before (visit user_path)
  end
end