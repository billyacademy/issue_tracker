class Issue < ActiveRecord::Base
  belongs_to :category,
    inverse_of: :issues

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :severity, presence: true
  validates :category_id, presence: true

  def self.severities
    [
      "Low",
      "Moderate",
      "High"
    ]
  end
end
