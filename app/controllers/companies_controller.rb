class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def index
    @companies = current_user.companies
  end

  def show
    @company = CompanyDecorator.find(params[:id])
    @accounts = @company.accounts
    @notes = @company.notes
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Success!"
      redirect_to companies_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(
      :user_id,
      :name,
      :website
    )
  end
end
