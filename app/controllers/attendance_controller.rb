class AttendanceController < ApplicationController

  def update
    program = Program.find_by_id(params[:program_id])
    @instance = program.students.find(params[:id])
    @instance.update_attribute(:attending, params[:attending])
    respond_to do |format|
      format.html { redirect_to program, notice: "Attendance Updated!" }
      format.js
    end
  end
end
