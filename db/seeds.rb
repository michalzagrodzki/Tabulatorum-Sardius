# encodes files in utf-8
# ruby encoding: utf-8

# This is examples for stories - for testing purposes

# List of stories for welcome_page
story_list = [
    ["Malta", "This is first text about Malta", "link to image", 35.882056, 14.447462 ],
    ["Cinque Terre", "This is second text about Cinque Terre", "link to image", 44.127062, 9.707102 ],
    ["Wicklow Way", "This is third text about Wicklow Way", "link to image", 53.083510, -6.256211 ]
]

# loop for putting story_list into db
story_list.each do |name, story_part_1, link_to_image, lat, lng |
  Story.create( name: name, story_part_1: story_part_1, link_image_1: link_to_image, latitude: lat, longitude: lng )
end

tag_list = [
    ["Hike", 1],
    ["City", 2],
    ["Museum", 3],
    ["Trail", 4],
    ["Eat", 5],
    ["Relax", 6],

]

# loop for putting tag_list into db
tag_list.each do |name, story_id|
  Tag.create( name: name, story_id: story_id )
end



