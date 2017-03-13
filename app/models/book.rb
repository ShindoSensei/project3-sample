class Book < ApplicationRecord
  belongs_to :author
  # validates_presence_of :name  #Like require, need this to be filled in 
end
