# encodes files in utf-8
# ruby encoding: utf-8

# This is examples for stories - for testing purposes

# List of stories for welcome_page
story_list = [
    ["Malta", "This is first text about Malta", "link to image" ],
    ["Cinque Terre", "This is second text about Cinque Terre", "link to image" ],
    ["Wicklow Way", "This is third text about Wicklow Way", "link to image" ]
]

# loop for putting story_list into db
story_list.each do |name, story_part_1, link_to_image |
  Story.create( name: name, story_part_1: story_part_1, link_image_1: link_to_image )
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
  Tag.create(name: name, story_id: story_id)
end



