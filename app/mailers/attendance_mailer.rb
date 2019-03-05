class AttendanceMailer < ApplicationMailer

  default from: 'no-reply@monsite.fr'

  def join_event_email(attendance)
    @attendance = attendance

    @url  = 'http://monsite.fr/login'
    mail(to: @attendance.event.admin.email, subject: 'Un nouveaux participant à ton évenement !')
  end
end
