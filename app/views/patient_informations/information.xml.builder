xml.patient('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/patient_information",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |pi|
          pi.tag!("core:name") do |name|
              name.given @patient.name.split(",")[1]
              name.last @patient.name.split(",")[0]
          end
          
          if @patient.has_address
          pi.tag!("core:address") do |add|
            
            add.streetAddress(@patient.street_address_1) if @patient.street_address_1
            add.streetAddress(@patient.street_address_2) if @patient.street_address_2
            add.streetAddress(@patient.street_address_3) if @patient.street_address_3
            add.city(@patient.city) if @patient.city
            add.state(@patient.state) if @patient.state
            add.postalCode(@patient.zip) if @patient.zip         
          end
          
        end
        
          pi.tag!("core:telecom" , "value"=>"tel:#{@patient.home_phone}", "use"=>"HOME" ) if @patient.home_phone
          pi.tag!("core:telecom" , "value"=>"tel:#{@patient.work_phone}", "use"=>"WORK" ) if @patient.work_phone
          pi.tag!("core:telecom" ,  "value"=>"tel:#{@patient.cell_phone}", "use"=>"CELLULAR" ) if @patient.cell_phone
          pi.tag!("core:telecom" ,  "value"=>"tel:#{@patient.PAGER}", "use"=>"PAGER" ) if @patient.pager
          pi.tag!("core:telecom" ,  "value"=>"email:#{@patient.email}", "use"=>"EMAIL" ) if @patient.email
          
          
          pi.id "#{@patient.id}"
          pi.gender(  "#{@patient.sex}" , "code" => "#{{"MALE"=>"M","FEMALE"=>"F"}[@patient.sex] || "UN"}", "codeSystem" => "HL7", "displayName" =>"#{@patient.sex}" ) 
          pi.birthTime "#{@patient.dob}"
          pi.maritalStatus @patient.find_marital_status.name if @patient.find_marital_status
          pi.race
          
          if @patient.pob_city  &&  @patient.pob_state
            pi.birthPlace do |bp|
               pi.tag!("core:address") do |add|
                  add.city(@patient.pob_city) 
                  add.state(@patient.pob_state)
                end
            end
        end
     
end
