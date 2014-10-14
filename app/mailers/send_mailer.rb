class SendMailer < ActionMailer::Base
  default from: "tranthanhepu@gmail.com"

  def active_email(user)
    @user = user
    @url  = 'http://localhost:3000/active/email=' + @user.email + '/id=' + Digest::MD5.hexdigest( @user.password )    
    mail(to: @user.email, subject: 'Welcome to TRANTHANHEPU.COM Site')        
  end
end
