class CompanyController < ApplicationController
  def info
    @companyInfo = CompaniesInfo.find(params[:id])
  end
end
