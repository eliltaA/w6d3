# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('artwork_shares')
ActiveRecord::Base.connection.reset_pk_sequence!('artworks')
ActiveRecord::Base.connection.reset_pk_sequence!('users')

# Create Users
user1 = User.create!(username: "user1")
user2 = User.create!(username: "user2")
user3 = User.create!(username: "user3")

# Create! Artworks
artwork1 = Artwork.create!(title: "Artwork 1", image_url: "https://example.com/artwork1.jpg", artist: user1)
artwork2 = Artwork.create!(title: "Artwork 2", image_url: "https://example.com/artwork2.jpg", artist: user2)
artwork3 = Artwork.create!(title: "Artwork 3", image_url: "https://example.com/artwork3.jpg", artist: user3)

# Create! ArtworkShares
ArtworkShare.create!(artwork: artwork1, viewer: user2)
ArtworkShare.create!(artwork: artwork1, viewer: user3)
ArtworkShare.create!(artwork: artwork2, viewer: user1)
ArtworkShare.create!(artwork: artwork3, viewer: user1)