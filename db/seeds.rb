Post.destroy_all
User.destroy_all
Category.destroy_all
PostCategory.destroy_all
Comment.destroy_all


post1 = Post.create(title: "First Post", content: "I'm the first post.")
post2 = Post.create(title: "Second Post", content: "I'm the second post.")

user1 = User.create(username: "Bob", email: "bob@bob.com")
user2 = User.create(username: "Sally", email: "sally@sally.com")

category1 = Category.create(name: "Fun")
category2 = Category.create(name: "Serious")
category3 = Category.create(name: "Sad")

PostCategory.create(post_id: post1.id, category_id: category1.id)
PostCategory.create(post_id: post2.id, category_id: category1.id)
PostCategory.create(post_id: post1.id, category_id: category2.id)
PostCategory.create(post_id: post2.id, category_id: category3.id)

Comment.create(content: "This is great.", user_id: user1.id, post_id: post1.id)
Comment.create(content: "I agree.", user_id: user1.id, post_id: post2.id)
Comment.create(content: "UPVOTE :) !!!", user_id: user2.id, post_id: post1.id)
Comment.create(content: "PEOPLE ARE WRONG ON THE INTERNET.", user_id: user2.id, post_id: post2.id)
