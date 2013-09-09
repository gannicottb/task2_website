class Favorite < ActiveRecord::Base
  attr_accessible :link, :title
  belongs_to :user
  validates :user_id, presence: true

end
