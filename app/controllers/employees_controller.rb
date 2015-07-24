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
  def search
  #   Leave.get_leaves(params[:to_date], params[:from_date])
  #   leaves = Leave.all
  #   days = (params[:to_date] - params[:from_date]).to_i
  #   @data = []
  #   # initializing data array
  #   days.each {|i| @data[i] = 0}
  #   # checking all the leaves
  #   leaves.each do |leave|
  #     index_start = leave.start_date - params[:from_date]
  #     index_end = leave.end_date - params[:from_date]
  #     if leave.end_date > params[:from_date] || leave.start > params[:to_date]
  #       next
  #     else
  #       if leave.start_date > params[:from_date]
  #         if leave.end_date < params[:to_date]
  #           (index_start ..  index_end).each { |i| @data[i]+=1}
  #         else
  #           (index_start .. days).each { |i|  @data[i]+=1 }
  #       end
  #       else
  #         (0 .. index_end).each { |i| @data[i]+=1 }
  # end  #def search
end
private
  def employee_params
    params.require(:employee).permit(:name, :dept, :designation, :doj, :total_leaves, :leaves_left, :address, :blood_group, :dob)
  end
end
