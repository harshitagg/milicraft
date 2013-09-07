# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
comments_first = Comment.create([{ email: 'harshit@cmu.edu', body: 'Nice work'}, { email: 'hello@yahoo.com', body: 'Great post'}])
comments_second = Comment.create([{ email: 'awesome@ness.com', body: 'Awesome'}])
Post.create(title: 'F-16', text: 'The General Dynamics F-16 Fighting Falcon is a single-engine multirole fighter aircraft originally developed by General Dynamics for the United States Air Force.', comments: comments_first)
Post.create(title: 'Sukhoi Su-30', text: 'The Su-30 started out as an internal development project in the Sukhoi Su-27 family by Sukhoi. The design plan was revamped and the name was made official by the Russian Defense Ministry in 1996. Of the Flanker family, only the Su-27, Su-30, Su-34 and Su-35 have been ordered into serial production by the Defense Ministry. All the others, such as Su-37, were prototypes.', comments: comments_second)