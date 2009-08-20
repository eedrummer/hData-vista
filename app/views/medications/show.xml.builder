xml.medication('xmlns' => "http://projecthdata.org/hdata/schemas/2009/06/medication",
               'xmlns:hrf'=>"http://projecthdata.org/hdata/schemas/2009/06/core") do |medication|
  medication.product do |product|
    product.name(@med.name)
    product.code('codeSystem' => 'NDC', 'code' => @med.ndc, 'displayName' => 'NDC')
  end
  
  medication.orderInformation('orderNumber' => @med.order_id)

end