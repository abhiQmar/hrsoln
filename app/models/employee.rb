class Employee < ActiveRecord::Base
  validates :name, presence: true
  def new
  end
end
