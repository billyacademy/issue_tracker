class Issue < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :severity, presence: true

  def self.categories
    [
      'Bug',
      'Feature Request',
      'Customer Service'
    ]
  end

  def self.severities
    [
      "Low",
      "Moderate",
      "High"
    ]
  end
end
