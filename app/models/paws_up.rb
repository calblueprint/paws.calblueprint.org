class PawsUp < ActiveRecord::Base
  validates :description, presence: true
end
