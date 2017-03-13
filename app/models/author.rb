class Author < ApplicationRecord
  has_many :books
  belongs_to :publisher, dependent: :destroy
  validates_presence_of :name  #Like require, need this to be filled in
end
