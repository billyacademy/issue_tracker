class Category < ActiveRecord::Base
  has_many :issues,
    inverse_of: :category
    
  validates :name, presence: true
end
