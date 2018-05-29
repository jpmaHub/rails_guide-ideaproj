FactoryBot.define do
  factory :idea do
    name 'My Awesome Idea Name'
    description 'It is about the idea'
    picture { Rack::Test::UploadedFile.new('spec/fixtures/images/image.jpg', 'image/jpg') }
  end

  factory :comment do
    user_name 'Jade_West'
    body 'It was a good one'
    rating 3
    idea
  end
end
