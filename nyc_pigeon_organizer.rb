def nyc_pigeon_organizer(data)
  organized_hash = {}
  data.each do |property, property_details|
    property_details.each do |attribute, attribute_details|
      attribute_details.each do |pigeon_name|
        organized_hash[pigeon_name] ||= {}
        organized_hash[pigeon_name][property] ||= []
        organized_hash[pigeon_name][property] << attribute.to_s
      end
    end
  end
  organized_hash
end
