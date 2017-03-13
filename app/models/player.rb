class Player < ApplicationRecord
  has_many :fans, :as => :relationship
end
