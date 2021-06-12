class Store < ApplicationRecord
    belongs_to :store
    validates :store_id, presence: true
    validates :adress, presence: true
end
