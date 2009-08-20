# This controller is an abstract class that should be subclassed by nested resources
# of an HdataRecord. It will assign a patient instance variable with a patient assigned
class HdataRecordNestedResourceController < ApplicationController
  before_filter :set_patient
  
  def set_patient
    @patient = Patient.find_by_ien(params[:hdata_record_id])
    @patient_ien = params[:hdata_record_id]
    @host_port = request.host_with_port
  
  end
end