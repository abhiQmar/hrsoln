class Leave < ActiveRecord::Base
  validates :days, presence: true
  belongs_to :employee, inverse_of: :leaves
end
