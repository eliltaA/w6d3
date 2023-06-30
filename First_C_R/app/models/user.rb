class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks, 
      foreign_key: :artist_id,
      inverse_of: :artist,
      dependent: :destroy

      has_many :comments,
      dependent: :destroy

    has_many :artwork_shares,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        inverse_of: :viewer,
        dependent: :destroy

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork
end