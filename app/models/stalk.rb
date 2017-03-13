class Stalk < ApplicationRecord
  belongs_to :stalker, class_name: 'TwitterUser'
  belongs_to :stalkee, class_name: 'TwitterUser'
end
