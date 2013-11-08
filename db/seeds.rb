# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.create(name: 'Children')
Genre.create(name: 'Thriller')
Genre.create(name: 'Science Fiction')

Movie.create(title: 'Tinker, Tailor, Soldier, Spy',
	trailer: '<iframe width="420" height= "315" src ="//www.youtube.com/embed/iak0_tZRcWs"
	frameborder="0" allowfullscreen></iframe>',
	poster: 'rails.png', genre_id: 4)