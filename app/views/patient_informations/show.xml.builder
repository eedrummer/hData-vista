# app/views/stories/feed.atom.builder
xml.feed('xmlns' => "http://www.w3.org/2005/Atom") do |feed|
  feed.title(@patient.name)
  feed.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ"))
  feed.author do |author|
    author.name('hData VistA Adapter')
  end
  feed.entry do |entry|
    entry.title('Patient Information')
    
    # XXX Hardcoded and needs to change
    entry.link( "href"=>"http://#{@host_port}/hdata_records/#{@patient_ien}/patient_information/information")
    
    # XXX Hardcoded and needs to change
    entry.id('urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6')
    entry.updated(Time.now.strftime("%Y-%m-%dT%H:%M:%SZ")) # needed to work with Google Reader.
  end
end