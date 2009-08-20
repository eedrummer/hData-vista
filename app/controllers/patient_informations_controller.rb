class PatientInformationsController < HdataRecordNestedResourceController
  def show
    respond_to do |format|
      format.xml
    end
  end
  
  def information
    respond_to do |format|
      format.xml
    end
  end
end