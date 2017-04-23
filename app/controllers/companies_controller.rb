class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
  end
end
