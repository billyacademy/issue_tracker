require 'rails_helper'

RSpec.describe Issue, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it 'belongs to category' do
    category = Category.create(name: "The Bearded One")
    issue = Issue.create(title: "Best Beard", description: "Adam has the best beard", severity: "High", category: category)

    expect(issue.category).to eql(category)
  end

  describe '.severities' do
    it 'includes High' do
      expect(Issue.severities).to include('High')
    end

    it 'includes Moderate' do
      expect(Issue.severities).to include('Moderate')
    end

    it 'includes Low' do
      expect(Issue.severities).to include('Low')
    end

    it 'does not have valid severity when nil' do
      issue = Issue.create(title: "Adam's Beard", description: "What a glorious beard!", severity: nil)
      issue.valid?
      expect(Issue.all.count).to eql(0)
    end
  end

  describe Category do
    it 'does not have valid name when nil' do
      category = Category.create(name: nil)
      expect(Category.all.count).to eql(0)
    end
  end
end
