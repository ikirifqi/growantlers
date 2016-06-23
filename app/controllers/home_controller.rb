class HomeController < ApplicationController
  def index
    @teams = Team.all
    @portfolios = Portfolio.order('created_at DESC').limit(6)
    @portfolio_sizes = [:portrait, :landscape, :portrait, :portrait, :landscape, :landscape]
  end

  def portfolio
    @portfolios = Portfolio.order('created_at DESC')
  end

  def show_portfolio
    @portfolio = params[:slug_id]
    @portfolio = Portfolio.find_by_slug_id(@portfolio)
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
