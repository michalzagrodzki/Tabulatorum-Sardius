# encodes files in utf-8
# ruby encoding: utf-8

######

# This is examples for stories - for testing purposes

### List of stories - shows layout of text

part_1_story = "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way."

part_2_story = "When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word and and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again. And if she hasn’t been rewritten, then they are still using her."

part_3_story = "Not so far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way."

advice_text = "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. What's happened to me?  he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame."

### List of image links
link_to_main_page_image = 'http://s6.postimg.org/3x9u55ym9/story_main_page_image.jpg'

link_to_head_image = 'http://s6.postimg.org/hs84nmt1d/story_header_image.jpg'

### Database entries

#####

## Stories

#####

Story.create( name: 'Malta',
              advice: advice_text,
              main_page_image: link_to_main_page_image,
              header_image: link_to_head_image,
              latitude: 35.882056,
              longitude: 14.447462 )

Story.create( name: 'Cinque Terre',
              advice: advice_text,
              main_page_image: link_to_main_page_image,
              header_image: link_to_head_image,
              latitude: 44.127062,
              longitude: 9.707102 )

Story.create( name: 'Wicklow Way',
              advice: advice_text,
              main_page_image: link_to_main_page_image,
              header_image: link_to_head_image,
              latitude: 53.083510,
              longitude: -6.256211 )

#####

## Chapters

#####

# Malta Chapters

Chapter.create(
    text: part_1_story,
    story_id: 1 )

Chapter.create(
    text: part_2_story,
    story_id: 1 )

Chapter.create(
    text: part_3_story,
    story_id: 1 )

#####

## Pictures

#####

link_to_regular_image_01 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_02 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_03 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_04 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_05 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_06 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_07 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_08 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'
link_to_regular_image_09 = 'http://s6.postimg.org/72puhmrup/story_normal_image.jpg'

# Malta Images

# Regular Images

picture_01 = Picture.create(
    title: 'Regular image 01',
    description: 'Spectacular view.',
    link: link_to_regular_image_01,
    location: 'Sliema, Malta',
    latitude: 35.897622,
    longitude: 14.538297,
    story_id: 1,
    chapter_id: 1
)

picture_01.save!

picture_02 = Picture.create(
    title: 'Regular image 02',
    description: 'Spectacular view.',
    link: link_to_regular_image_02,
    location: 'Sliema, Malta',
    latitude: 35.897222,
    longitude: 14.505297,
    story_id: 1,
    chapter_id: 1
)

picture_02.save!

picture_03 = Picture.create(
    title: 'Regular image 03',
    description: 'Spectacular view.',
    link: link_to_regular_image_03,
    location: 'Sliema, Malta',
    latitude: 35.894322,
    longitude: 14.508397,
    story_id: 1,
    chapter_id: 1
)

picture_03.save!

picture_04 = Picture.create(
    title: 'Regular image 04',
    description: 'Spectacular view.',
    link: link_to_regular_image_04,
    location: 'Sliema, Malta',
    latitude: 35.892322,
    longitude: 14.501297,
    story_id: 1,
    chapter_id: 2
)

picture_04.save!

picture_05 = Picture.create(
    title: 'Regular image 05',
    description: 'Spectacular view.',
    link: link_to_regular_image_05,
    location: 'Sliema, Malta',
    latitude: 35.899322,
    longitude: 14.505297,
    story_id: 1,
    chapter_id: 2
)

picture_05.save!

picture_06 = Picture.create(
    title: 'Regular image 06',
    description: 'Spectacular view.',
    link: link_to_regular_image_06,
    location: 'Sliema, Malta',
    latitude: 35.891422,
    longitude: 14.503297,
    story_id: 1,
    chapter_id: 2
)

picture_06.save!

picture_07 = Picture.create(
    title: 'Regular image 07',
    description: 'Spectacular view.',
    link: link_to_regular_image_07,
    location: 'Sliema, Malta',
    latitude: 35.895422,
    longitude: 14.507597,
    story_id: 1,
    chapter_id: 3
)

picture_07.save!

picture_08 = Picture.create(
    title: 'Regular image 08',
    description: 'Spectacular view.',
    link: link_to_regular_image_08,
    location: 'Sliema, Malta',
    latitude: 35.899222,
    longitude: 14.501897,
    story_id: 1,
    chapter_id: 3
)

picture_08.save!

picture_09 = Picture.create(
    title: 'Regular image 09',
    description: 'Spectacular view.',
    link: link_to_regular_image_09,
    location: 'Sliema, Malta',
    latitude: 35.892122,
    longitude: 14.501697,
    story_id: 1,
    chapter_id: 3
)

picture_09.save!


#
# tag_list = [
#    ['Hike', 1],
#    ['City', 2],
#    ['Museum', 3],
#    ['Trail', 4],
#    ['Eat', 5],
#    ['Relax', 6]
#]

# loop for putting tag_list into db
#tag_list.each do |name, story_id|
#  Tag.create( name: name, story_id: story_id )
#end

# End of examples for stories



