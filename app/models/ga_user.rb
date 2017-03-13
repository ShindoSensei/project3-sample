class GaUser < ApplicationRecord
  has_many :students, class_name: 'GaUser', foreign_key: 'teacher_id'

  belongs_to :teacher, class_name: 'GaUser', optional: true

end
