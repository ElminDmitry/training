namespace :db do
  task populate: :environment do
    100.times do
      content = Faker::Lorem.sentence(5)
      Post.create!(content: content)
    end
  end
end