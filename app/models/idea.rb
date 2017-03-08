class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy   #This dependent field ensures that any dependents of ideas are also destroyed when the parent Idea is destroyed.
end
