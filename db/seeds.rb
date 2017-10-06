User.create!(
  email: "admin@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  roles: "admin"
)

puts "1 Admin user created"

User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
)

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
)

puts "2 regular user created"

100.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    date: Date.today,
    user_id: User.last.id
  )
end

puts "100 blog posts created"