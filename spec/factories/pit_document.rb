FactoryBot.define do
  factory :pit_document do
    title { "無題のドキュメント" }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    uuid { "39f03a27-6fcd-40a9-935b-8a0fff7e0769" }
  end
end
