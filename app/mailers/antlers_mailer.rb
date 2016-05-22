class AntlersMailer < ApplicationMailer
  def send_notification_to_admin(visitor_name, visitor_email, visitor_message)
    @visitor_name = visitor_name
    @visitor_email = visitor_email
    @visitor_message = visitor_message
    mail(:to => 'ask.growantlers@gmail.com', :from => visitor_email,
         :subject => '[Incoming Contact] ' + visitor_name)
  end

  def send_notification_to_visitor(visitor_name, visitor_email, visitor_message)
    @visitor_name = visitor_name
    @visitor_email = visitor_email
    @visitor_message = visitor_message
    mail(:to => visitor_email, :subject => '[Incoming Contact] ' + visitor_name)
  end
end
