class HomeController < ApplicationController
  def index
  end

  def portfolio
  end

  def show_portfolio
  end

  def contact
  end

  def submit_contact
    if !params[:name].present? || !params[:email].present? || !params[:message].present?
      redirect_to :back
    else
      name = params[:name]
      email = params[:email]
      message = params[:message]

      # TODO: move to background process
      AntlersMailer.send_notification_to_admin(name, email, message)
      AntlersMailer.send_notification_to_visitor(name, email, message)

      redirect_to root_path
    end
  end
end
