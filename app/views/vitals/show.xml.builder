xml.result('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/result",
         'xmlns:core' => "http://projecthdata.org/hdata/schemas/2009/06/core",
          "xmlns:xsi" =>"http://www.w3.org/2001/XMLSchema-instance") do |res|
           res.tag!("core:date", @vital.date.strftime("%Y-%m-%dT%H:%M:%SZ"))
           res.resultType "#{@vital.kind}"
           if @vital.value[:unit]
           res.value("xsi:type"=>"unitValue", "unit"=>"#{@vital.value[:unit]}", "value"=>"#{@vital.value[:value]}")         
         elsif @vital.value[:diastolic]
           res.value("xsi:type"=>"bp", "diastolic"=>"#{@vital.value[:diastolic]}", "systolic"=>"#{@vital.value[:systolic]}")        
         end
end