class Comment < ApplicationRecord
  belongs_to :idea  #1 comment belongs to 1 idea
  belongs_to :user, optional: true #Optional here means that 
end
