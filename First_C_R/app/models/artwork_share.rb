class ArtworkShare < ApplicationRecord
    validates :viewer_id, uniqueness: {scope: :artwork_id}
    belongs_to :viewer,
        class_name: :User

    belongs_to :artwork,
    inverse_of: :artwork_shares

end
