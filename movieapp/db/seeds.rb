# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(title: 'Iron Man', genre: 'Action',
             year: 2010, synopsis: 'He is Iron Man')
Movie.create(title: 'Iron Man 2', genre: 'Action',
             year: 2011, synopsis: 'He is ALSO Iron Man')
Movie.create(title: 'Iron Man 3', genre: 'Action',
             year: 2013, synopsis: 'He is Still Iron Man')
Movie.create(title: 'The Avengers', genre: 'Action',
             year: 2014, synopsis: 'He is Iron Man with Friends')
Movie.create(title: 'The Avengers 2', genre: 'Action',
             year: 2015, synopsis: 'He is Iron Man with More Friends')
