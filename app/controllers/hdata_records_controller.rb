class HdataRecordsController < ApplicationController
  def show
    @patient = Patient.find_by_ien(params[:id])
    
    respond_to do |format|
      format.xml
    end
  end
end
