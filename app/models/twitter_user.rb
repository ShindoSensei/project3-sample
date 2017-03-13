class TwitterUser < ApplicationRecord
  has_many :stalkings,
            class_name: 'Stalk',
            foreign_key: 'stalker_id'

  has_many :stalked,
            class_name: 'Stalk',
            foreign_key: 'stalkee_id'

  has_many :victims, through: :stalkings, source: :stalkee
  has_many :stalker, through: :stalked, source: :stalker
end
