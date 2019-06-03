# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create( name: 'Star Wars' ,  name: 'Lord of the Rings' )
#   Character.create(name: 'Luke', movie: movies.first)

#Users
u1 = User.create( nickname: 'Gary Just-Gary', email: 'gary1@gmail.com', password: 'gary123', role: 'user', name: 'Gary', last_name: 'Just-Gary', bio: 'living the life as a Gary', location: 'Austin, US', geofence: '', profession: 'Beign Gary', profile_pic: 'Gary.jpg')
u2 = User.create( nickname: 'Karen Libsenburger', email: 'germanw@gmail.com', password: 'karen123', role: 'user', name: 'Karen', last_name: 'Libsenburger', bio: 'mostly german', location: 'Berlin, Germany', geofence: '', profession: 'Works at hydra', profile_pic: 'Karen.jpg')
u3 = User.create( nickname: 'Barracius', email: 'rjgonzalez@miuandes.cl', password: 'admin123', role: 'admin', name: 'Raimundo', last_name: 'Gonzalez', bio: 'worlds best man', location: 'Santiago, Chile', geofence: '', profession: 'Web developer', profile_pic: 'admin.png')
u4 = User.create( nickname: 'Nightmer', email: 'gpvicuna@miuandes.cl', password: '123456', role: 'admin', name: 'Gustavo', last_name: 'Vicuna', bio: 'worlds other best man', location: 'Santiago,Chile', geofence: '', profession: 'Web developer', profile_pic: 'admin.png')
u5 = User.create( nickname: 'Blockedguy', email: 'blockedguy@gmail.com', password: 'block123', role: 'user', name: 'Toxic', last_name: 'Guy', bio: 'making everyone hate me', location: 'Circle 9, Hell', geofence: '', profession: 'Devil', profile_pic: 'default-user.png')

#Posts
p1 = Post.create( user: u1, title: 'Beign Gary sucks', description: 'Summary of reasons why beign Gary sucks', location: 'Austin, US', dumped: false, grinchrate: 0)
p2 = Post.create( user: u2, title: 'I hate automatic doors', description: 'Number of reasons why automatic doors are designed by the devil', location: 'Berlin, Germany', dumped: false, grinchrate: 0)
p3 = Post.create( user: u3, title: 'Welcome!', description: 'Welcome to our new Complaints page! Hope you guys and girls like it', location: 'Santiago, Chile', dumped: false, grinchrate: 0)
p4 = Post.create( user: u5, title: "Gary and Karen can't read this", description: 'Im blocked by them', location: 'Circle 9, Hell', dumped: false, grinchrate: 0)

#Comments
c1 = Comment.create( user: u2, post: p1, content: 'I hate beign a Karen too')
c2 = Comment.create( user: u1, post: p1, content: 'I guess Karen sucks too')
c3 = Comment.create( user: u3, post: p3, content: 'Feel free to tell us what you think of the website')
c4 = Comment.create( user: u1, post: p2, content: 'I hate automatic doors too!')
c5 = Comment.create( user: u2, post: p2, content: 'ikr')

#Upvote posts
up1 = UpvotePost.create( user: u1, post: p2)
up2 = UpvotePost.create( user: u2, post: p1)

#Downvote posts
dp1 = DownvotePost.create( user: u5, post: p1)
dp2 = DownvotePost.create( user: u5, post: p2)
dp3 = DownvotePost.create( user: u5, post: p3)

#Follow posts
fp1 = FollowPost.create( user: u1, post: p2)
fp2 = FollowPost.create( user: u2, post: p1)

#Mark innapropiateds
mi1 = MarkInnapropiated.create( user: u5, post: p1)
mi2 = MarkInnapropiated.create( user: u5, post: p2)
mi3 = MarkInnapropiated.create( user: u5, post: p3)

#Downvote comments
dc1 = DownvoteComment.create( user: u5, comment: c1)
dc2 = DownvoteComment.create( user: u5, comment: c2)
dc3 = DownvoteComment.create( user: u5, comment: c3)
dc4 = DownvoteComment.create( user: u5, comment: c4)
dc5 = DownvoteComment.create( user: u5, comment: c5)

#Upvote comments
uc1 = UpvoteComment.create( user: u1, comment: c1)
uc2 = UpvoteComment.create( user: u2, comment: c2)
uc3 = UpvoteComment.create( user: u1, comment: c3)
uc4 = UpvoteComment.create( user: u2, comment: c3)
uc5 = UpvoteComment.create( user: u1, comment: c5)
uc6 = UpvoteComment.create( user: u2, comment: c4)

#Tags
t1 = Tag.create( tagger: u1, tagged: u2, comment: c4)
t2 = Tag.create( tagger: u2, tagged: u1, comment: c1)

#Blocks
b1 = Block.create( owner: u1, blocked: u5)
b2 = Block.create( owner: u2, blocked: u5)

#Follow users
f1 = FollowUser.create( follower: u1, followed: u2)
f2 = FollowUser.create( follower: u2, followed: u1)

#Categories
ca1 = Category.create( name: 'Education')
ca2 = Category.create( name: 'Daily Life')
ca3 = Category.create( name: 'Gaming')
ca4 = Category.create( name: 'Social')
ca5 = Category.create( name: 'Workplace')
ca6 = Category.create( name: 'Economy')

#Category posts
cp1 = CategoryPost.create( category: ca4, post: p1)
cp2 = CategoryPost.create( category: ca2, post: p1)
cp3 = CategoryPost.create( category: ca4, post: p2)
cp4 = CategoryPost.create( category: ca2, post: p2)
cp5 = CategoryPost.create( category: ca5, post: p2)
cp1 = CategoryPost.create( category: ca4, post: p3)

#Achievements
a1 = Achievement.create( title: 'First day on the job', description: 'Log in for the first time')
a2 = Achievement.create( title: 'Lil Grinch', description: 'Make a post')
a3 = Achievement.create( title: 'The talkative one', description: 'Comment 5 times')

#Achievment users
au1 = AchievementUser.create( achievement: a1, user: u1)
au2 = AchievementUser.create( achievement: a1, user: u2)
au3 = AchievementUser.create( achievement: a1, user: u3)
au4 = AchievementUser.create( achievement: a1, user: u4)
au5 = AchievementUser.create( achievement: a1, user: u5)
au6 = AchievementUser.create( achievement: a2, user: u1)
au7 = AchievementUser.create( achievement: a2, user: u2)
au8 = AchievementUser.create( achievement: a2, user: u3)
au9 = AchievementUser.create( achievement: a2, user: u5)
