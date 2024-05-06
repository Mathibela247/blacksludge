# Preview all emails at http://localhost:3000/rails/mailers/guest_mailer
class GuestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/guest_mailer/invite
  def invite
    GuestMailer.invite
  end

end
