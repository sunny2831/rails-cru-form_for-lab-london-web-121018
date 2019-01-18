# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = [
  {name:"Taylor Swift", bio:"Country singer turned pop icon"},
  {name:"Ariana grande", bio: "Best know and believe, Ariana runs pop" },
  {name:"Nicki Minaj", bio: "The Female Weezy and Reigning Queen of Rap" },
]

genres = [
  {name:"Country"},
  {name:"Pop"},
  {name:"Rap"},
  {name:"Dance"},
  {name:"R&B"}
]

songs = [
  {name:"Ours"},
  {name:"22"},
  {name:"I knew you were trouble"},
  {name:"God is a woman"},
  {name:"Bang bang"},
  {name:"No tears left to cry"},
  {name:"Moment for life"},
  {name:"See right through me"},
  {name:"Pound the alarm"}
]
#
# songs = songs.map { |song| song.update( { artist_id: Artist.all.sample.id } ) }
# songs = songs.map { |song| song.update( { genre_id: Genre.all.sample.id } ) }
artists.each {|artist| Artist.create(artist)}
genres.each {|genre| Genre.create(genre)}

song_names = songs.map {|song| song[:name]}
song_names.each { |song_name| Song.create(
  name: song_name,
  artist_id: Artist.all.sample.id,
  genre_id: Genre.all.sample.id) }

puts "songs"
