class Fan < ApplicationRecord
  belongs_to :relationship, polymorphic: true
end
