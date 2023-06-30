class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id}

    belongs_to :artist,
    class_name: :User

    has_many :artwork_shares,
         dependent: :destroy

    has_many :comments,
        dependent: :destroy

   has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

    # def self.artworks_by_user_id(user_id)
    #     Artwork.where
    # end
end
