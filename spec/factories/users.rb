FactoryBot.define do
  factory :user do
    name { "#{[Faker::Cannabis.buzzword.titleize, Faker::Science.modifier, Faker::Verb.past_participle.capitalize].sample} #{Faker::Name.last_name}" }
    email { Faker::Internet.email }
  end
end