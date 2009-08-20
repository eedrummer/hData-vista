# app/views/stories/feed.atom.builder
xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
  feed.title("#{@patient.name} - Vitals")
  feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
  feed.author do |author|
    author.name('hData VistA Adapter')
  end
  @vitals.each_with_index do |vital,index|
    feed.entry do |entry|
      entry.title( "#{vital.kind} - #{vital.value[:value]} #{vital.value[:unit]}")
    
      entry.link( "href" => hdata_record_vital_url(@patient_ien, index + 1))
    
      # XXX Hardcoded and needs to change
      entry.id('urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6')
      entry.updated((vital.date || Time.now).strftime("%Y-%m-%dT%H:%M:%SZ")) # needed to work with Google Reader.
    end
  end
end