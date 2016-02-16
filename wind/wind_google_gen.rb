
ARGV.each do |item|
	name = File.basename(item).split("m").first
	puts("   LAYER")
	puts("        name \"google-spd#{name}-2010\"")
	puts("   	type raster")
	puts(" 		status on")
	puts(" 		OFFSITE 0 0 0")
	puts(" 		DATA \"#{item}\"")
	puts(" 		GROUP \"Wind - Google Maps\"")
	puts(" 		include \"mapserver_google_maps.include\"")
	puts(" 		DEBUG ON")
	puts(" 		METADATA")
	puts(" 			WMS_TITLE \"2010-spd#{name}\"")
	puts(" 			\"wms_group_title\" \"Wind - Google Maps\"")
	puts(" 			WMS_ABSTRACT \"TBD.\"")
	puts(" 		END")
	puts(" 	 END")
end
