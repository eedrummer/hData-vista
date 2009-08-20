class AllergiesController < HdataRecordNestedResourceController
  def index
    @allergies = Allergy.find_allergies_by_patient_ien( @patient_ien)
    respond_to do |format|
      format.xml
    end
  end
  
  def show
    @allergies = Allergy.find_allergies_by_patient_ien( @patient_ien)
    @allergy = @allergies.find{|x| x.ien == params[:id]}
    
    respond_to do |format|
      format.xml
    end
  end
end