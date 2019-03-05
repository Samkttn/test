class AttendancesController < ApplicationController

  def new
    attendance = Attendance.new
  end

  def create
    attendance = Attendance.create
    puts "$"*60
    puts params
    puts "$" * 60
    if attendance.save
      redirect_to root_path
    else
      redirect_to new_event_path
    end
  end
end
