RSpec.describe Comment, type: :model do
  let(:comment) { FactoryBot.create(:comment) }
  let(:idea) { FactoryBot.create(:idea) }

  it 'added a comment' do
    expect(comment.user_name).to eq('Jade_West') # this is our expectation
    expect(comment.body).to eq('It was a good one')
    expect(comment.rating).to eq(3)
    expect(comment).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :user_name }
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :rating }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:idea) }
  end

  describe 'validations length' do
    it { is_expected.to  validate_length_of :user_name }
    it { is_expected.to  validate_length_of :body }
    it { is_expected.to validate_numericality_of :rating }
  end
end
