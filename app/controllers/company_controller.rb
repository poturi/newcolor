class CompanyController < ApplicationController
  def info
    
        
    @companyInfo = CompaniesInfo.find(params[:id])
    
    @jobInfo = JobM.find(@companyInfo.job_m_id)
    
    @ratingInfo = Rating.where("companies_info_id = ?", params[:id])
    
    if @companyInfo.url.nil? then
      @companyInfo.url = ""
    end

  end
end
