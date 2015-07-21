class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def show
    @employee = Employee.find(params[:id])
    leaves = Leave.where employee_id: params[:id]
    sum = 0
    leaves.to_a.each {|l| sum += (l.end_date - l.start_date).to_i}
    @leaves_taken = sum
    # render inline: "<%= @employee.name %>"
  end
  def create
    emp = Employee.new(employee_params)
    emp.save
    redirect_to '/employees'
  end
  def destroy
    employee = Employee.find(params[:id])
    employee.destroy!
    redirect_to employees_path
  end
private
  def employee_params
    params.require(:employee).permit(:name, :dept, :designation, :doj, :total_leaves, :leaves_left, :address, :blood_group, :dob)
  end
end
