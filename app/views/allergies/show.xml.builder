xml.allergy('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/allergy",
            'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core") do |ag|
           ag.product @allergy.product
           ag.tag!("core:date", Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
           ag.reaction @allergy.reaction 
end