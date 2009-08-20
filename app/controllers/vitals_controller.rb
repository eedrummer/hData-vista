class VitalsController < HdataRecordNestedResourceController
  def index
    @vitals =  VitalSign.find_vital_signs_by_patient_ien(@patient_ien)
    respond_to do |format|
      format.xml
    end
  end
  
  def show
    @vitals =  VitalSign.find_vital_signs_by_patient_ien(@patient_ien)
    @vital = @vitals[(params[:id].to_i - 1)]
    
    respond_to do |format|
      format.xml
    end
  end
end