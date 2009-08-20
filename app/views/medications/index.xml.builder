xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
  feed.title("#{@patient.name} - Medications")
  feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
  feed.author do |author|
    author.name('hData VistA Adapter')
  end
  @meds.each do |med|
    feed.entry do |entry|
      entry.title(med.name)
    
      entry.link( "href" => hdata_record_medication_url(@patient_ien, med.order_id))
    
      # XXX Hardcoded and needs to change
      entry.id('urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6')
      entry.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
    end
  end
end