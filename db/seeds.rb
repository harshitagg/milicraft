# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comments = Comment.create([{content: 'Nice Post', email: 'harry@cmu.edu'}, {content: 'Good work', email: 'tom@cmu.edu'}])
Post.create(title: 'F-16', content: 'Air superiority aircraft', comments: comments)