class Like < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  belongs_to :photo
end
