require 'rails_helper'

# require '/app/models/employee.rb'

describe Employee do
  it 'should not be valid without a name' do
    emp = Employee.new
    emp.should_not be_valid
  end
  it 'raises an error when saved without a name' do
    emp = Employee.new
    expect {emp.save!}.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
  xit 'is named Abhi' do
    emp = Employee.new
    emp.name.should == 'Abhi'
  end
end
