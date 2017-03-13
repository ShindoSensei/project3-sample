class Team < ApplicationRecord
  has_many :fans, :as => :relationship
end
