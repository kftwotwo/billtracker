class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
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
