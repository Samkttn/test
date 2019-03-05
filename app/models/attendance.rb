class Attendance < ApplicationRecord
  after_create :join_event_email_send

  belongs_to :user
  belongs_to :event


  def join_event_email_send
    AttendanceMailer.join_event_email(self).deliver_now
  end
end
