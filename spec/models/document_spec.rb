require 'rails_helper'

RSpec.describe Document, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  context 'validations' do
    it 'is valid with valid attributes' do
      document = Document.new(title: 'Valid Title', description: 'A valid description.')
      expect(document).to be_valid
    end

    it 'is invalid without a title' do
      document = Document.new(title: nil, description: 'A description without a title.')
      expect(document).not_to be_valid
      expect(document.errors[:title]).to include("can't be blank")
    end

    it 'is invalid with a short title' do
      document = Document.new(title: 'Short', description: 'A description with a short title.')
      expect(document).not_to be_valid
      expect(document.errors[:title]).to include("is too short (minimum is 6 characters)")
    end
  end
end
