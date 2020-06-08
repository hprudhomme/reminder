class Block < ApplicationRecord
    belongs_to :user
    has_many :nottes
end
