class MedicationsController < HdataRecordNestedResourceController
  def index
    @meds =  Medication.find_by_patient_ien(@patient_ien)
    respond_to do |format|
      format.xml
    end
  end
  
  def show
    meds =  Medication.find_by_patient_ien(@patient_ien)
    @med = meds.find {|med| med.order_id == params[:id]}
    
    respond_to do |format|
      format.xml
    end
  end
end