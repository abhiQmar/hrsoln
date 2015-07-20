class LeavesController < ApplicationController
  def new
  end
  def create
    leave = Leave.new(leave_params)
    leave[:employee_id] = params[:id]
    leave.save
    render inline: "<meta HTTP-EQUIV='REFRESH' content='2; url=/employees'>Leave has been added"
  end
private
  def leave_params
    params.require(:leave).permit(:days,:title,:description)
  end
end
