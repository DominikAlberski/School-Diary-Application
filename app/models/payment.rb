class Payment < ActiveRecord::Base
  belongs_to :student
  # validates :student_id, presence: true
end
