
(0..9).each do
  Article.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    authorship: Faker::Name.name,
  )
end