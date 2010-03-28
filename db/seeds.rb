
require "rexml/document"
include REXML
file = File.open(File.dirname(__FILE__)+"/rancho_seed_data.xml","r")
doc=Document.new file
rows=doc.root
rows.elements.each("row") do |row|

cont = Content.new
cont.location = Location.find_or_create_by_lat_and_lng(row.elements["lat"].text,row.elements["lng"].text)
cont.body = row.elements["body"].text
cont.save

end