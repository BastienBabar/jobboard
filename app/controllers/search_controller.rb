class SearchController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    render 'index', :layout => 'application'
  end

  def search
    @result = job_search(params['keyword'], params['location'])
    respond_to do |format|
      format.html { render layout: false }
      format.json { render json: @result}
    end
  end

  private
  def job_search keyword, location
    if keyword != '' and location != ''
      return Job.where("(jobtitle LIKE ? OR jobsummary LIKE ?) AND locations LIKE ?", '%' + keyword + '%', '%' + keyword + '%', '%' + location + '%').take(25)
    else
      return Job.where("jobtitle LIKE ? OR jobsummary LIKE ?", '%' + keyword + '%', '%' + keyword + '%').take(25) if keyword != ''
      return Job.where("locations LIKE ?", '%' + location + '%').take(25) if location != ''
    end
  end
end
