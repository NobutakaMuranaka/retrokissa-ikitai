class Store < ApplicationRecord
    belongs_to :store
    default_scope -> { order(created_at: :desc) }
    mount_uploader :picture, PictureUploader
end
