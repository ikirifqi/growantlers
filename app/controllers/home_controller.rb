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
    result = 'Failed to submit your contact'

    if params[:name].present? && params[:email].present? && params[:message].present?
      name = params[:name]
      email = params[:email]
      message = params[:message]

      # TODO: move to background process
      AntlersMailer.send_notification_to_admin(name, email, message).deliver_now
      AntlersMailer.send_notification_to_visitor(name, email, message).deliver_now

      result = '1'
    end

    respond_to do |f|
      f.js { render :json => result }
    end
  end
end
