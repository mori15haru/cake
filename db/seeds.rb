puts '*' * 100
puts 'Delete all the existing records'
Comment.destroy_all
Article.destroy_all
User.destroy_all
puts '*' * 100
puts 'Create users'
user1_data = {
  email: 'user1@email.com',
  password: 'password1',
}
user2_data = {
  email: 'user2@email.com',
  password: 'password2',
}
user3_data = {
  email: 'user3@email.com',
  password: 'password3',
}
users_data = [user1_data, user2_data, user3_data]
user1, user2, user3 = users_data.map { |user_data| User.create(user_data) }
puts '*' * 100
puts 'Create articles'
article1_data = {
  title: "Ut enim ad minim veniam",
  text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  user_id: user1.id,
}
article2_data = {
  title: "De apocalypsi gorger",
  text: "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.",
  user_id: user2.id,
}
article3_data = {
  title: "Doner spare ribs andouille",
  text: "Bacon ipsum dolor amet short ribs brisket venison rump drumstick pig sausage prosciutto chicken spare ribs salami picanha doner. Kevin capicola sausage, buffalo bresaola venison turkey shoulder picanha ham pork tri-tip meatball meatloaf ribeye. Doner spare ribs andouille bacon sausage. Ground round jerky brisket pastrami shank.",
  user_id: user3.id,
}
articles_data = [article1_data, article2_data, article3_data]
article1, article2, article3 = articles_data.map { |article_data| Article.create(article_data) }
puts '*' * 100
puts 'Create comments'
comment1_data = {
  article_id: article1.id,
  body: "Busey ipsum dolor sit amet.",
  user_id: user1.id,
}
comment2_data = {
  article_id: article2.id,
  body: "Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery.",
  user_id: user1.id,
}
comment3_data = {
  article_id: article3.id,
  body: "Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip.",
  user_id: user1.id,
}
comment4_data = {
  article_id: article1.id,
  body: "If you haven't seen Game of Thrones, go watch it right now.",
  user_id: user2.id,
}
comment5_data = {
  article_id: article2.id,
  body: "De apocalypsi gorger omero undead survivor dictum mauris.",
  user_id: user2.id,
}
comment6_data = {
  article_id: article3.id,
  body: "Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.",
  user_id: user2.id,
}
comment7_data = {
  article_id: article1.id,
  body: "Ground round jerky brisket pastrami shank.",
  user_id: user3.id,
}
comment8_data = {
  article_id: article2.id,
  body: "Busey ipsum dolor sit amet.",
  user_id: user3.id,
}
comment9_data = {
  article_id: article3.id,
  body: "Bulbasaur Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  user_id: user3.id,
}
comments_data = [comment1_data, comment2_data, comment3_data, comment4_data, comment5_data, comment6_data, comment7_data, comment8_data, comment9_data]
comments_data.map { |comment_data| Comment.create(comment_data) }
puts '*' * 100
