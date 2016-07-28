class PortfoliosController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  layout 'dashboard'

  # GET /portfolios
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/1
  def show
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio, notice: 'Portfolio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      redirect_to @portfolio, notice: 'Portfolio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
    redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:main_image, :secondary_image, :optional_image,
                                        :optional_image_visibility, :title, :main_description,
                                        :client, :role, :agency, :date, :left_description,
                                        :right_description, :team_id, :footer_title,
                                        :footer_description, :slug_id, :brief_description)
    end
end
