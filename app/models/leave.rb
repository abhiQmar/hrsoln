class Leave < ActiveRecord::Base
  belongs_to :employee, inverse_of: :leaves
end
