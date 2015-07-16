class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def show
    @employee = Employee.find(params[:id])
    # render inline: "<%= @employee.name %>"
  end
  def create
    emp = Employee.new(employee_params)
    emp.save
    redirect_to '/employees'
  end

private
  def employee_params
    params.require(:employee).permit(:name,:dept)
  end
end
