class Favorite < ActiveRecord::Base
  attr_accessible :link, :title, :user_id
  belongs_to :user
end
