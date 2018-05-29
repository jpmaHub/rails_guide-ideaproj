RSpec.describe Idea, type: :model do
  let(:idea) { FactoryBot.create(:idea) }

  it 'has a name,description and picture' do
    expect(idea.name).to eq('My Awesome Idea Name') # this is our expectation
    expect(idea.description).to eq('It is about the idea')
    expect(idea.picture.file).to_not be_nil
  end

  describe 'associations' do
    it { is_expected.to have_many(:comments) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :picture }
  end

  describe 'validations length' do
    it { is_expected.to  validate_length_of :name }
    it { is_expected.to  validate_length_of :description }
  end
end
