# encodes files in utf-8
# ruby encoding: utf-8

### Clearing database

Story.delete_all
Chapter.delete_all
Advice.delete_all
Picture.delete_all

######

# This is examples for stories - for testing purposes

### List of stories - shows layout of text

part_1_story = "A lovely walk around a lake."


advice_text = "Best way to reach is by train. Jump out at Hvalstad or Vakås and head west."

### List of image links

link_to_main_page_image = 'http://s6.postimg.org/iglat1q81/main_page.jpg'

link_to_head_image = 'http://s6.postimg.org/3yji7b9j5/header.jpg'

### Database entries

#####

## Stories

#####

Story.create( name: 'Afternoon walk',
              main_page_image: link_to_main_page_image,
              header_image: link_to_head_image,
              latitude: 59.859748,
              longitude: 10.422832 )

#####

## Chapters

#####

# Malta Chapters

Chapter.create(
    text: part_1_story,
    story_id: 1 )

#####

## Advice

#####

# Malta Chapters

Advice.create(
    text: advice_text,
    story_id: 1 )

#####

## Pictures

#####

link_to_regular_image_01 = 'http://s6.postimg.org/9qjmegjcx/IMG_3548.jpg'
link_to_regular_image_02 = 'http://s6.postimg.org/uyxavvxtt/IMG_3552.jpg'
link_to_regular_image_03 = 'http://s6.postimg.org/3vzmkh5vl/IMG_3574.jpg'
link_to_regular_image_04 = 'http://s6.postimg.org/523mj9u69/IMG_3577.jpg'
link_to_regular_image_05 = 'http://s6.postimg.org/5vg8bw075/IMG_3590.jpg'
link_to_regular_image_06 = 'http://s6.postimg.org/d17zec9a9/IMG_3599.jpg'
link_to_regular_image_07 = 'http://s6.postimg.org/81aj6e3nl/IMG_3619.jpg'
link_to_regular_image_08 = 'http://s6.postimg.org/ap4kuhm2p/IMG_3645.jpg'
link_to_regular_image_09 = 'http://s6.postimg.org/v5azyz6yp/IMG_3659.jpg'

# Malta Images

# Regular Images

picture_01 = Picture.create(
    title: 'Houses in autumn colors.',
    description: 'Fabulous view.',
    link: link_to_regular_image_01,
    location: 'Semsvannet, Asker',
    latitude: 59.860157,
    longitude: 10.456850,
    story_id: 1,
    chapter_id: 1

)

picture_01.save!

picture_02 = Picture.create(
    title: 'Path sign.',
    description: 'Road leading to lake.',
    link: link_to_regular_image_02,
    location: 'Semsvannet, Asker',
    latitude: 59.859717,
    longitude: 10.455523,
    story_id: 1,
    chapter_id: 1

)

picture_02.save!

picture_03 = Picture.create(
    title: 'View over lake towards west.',
    description: 'Splendid view.',
    link: link_to_regular_image_03,
    location: 'Semsvannet, Asker',
    latitude: 59.858550,
    longitude: 10.434441,
    story_id: 1,
    chapter_id: 1

)

picture_03.save!

picture_04 = Picture.create(
    title: 'Entrance to kindergarten.',
    description: 'Place where kids can play.',
    link: link_to_regular_image_04,
    location: 'Semsvannet, Asker',
    latitude: 59.859001,
    longitude: 10.432429,
    story_id: 1
)

picture_04.save!

picture_05 = Picture.create(
    title: 'Autumn tree.',
    description: 'Single tree over lake.',
    link: link_to_regular_image_05,
    location: 'Semsvannet, Asker',
    latitude: 59.862221,
    longitude: 10.429641,
    story_id: 1
)

picture_05.save!

picture_06 = Picture.create(
    title: 'Autumn grass.',
    description: 'Marvelous view.',
    link: link_to_regular_image_06,
    location: 'Semsvannet, Asker',
    latitude: 59.864039,
    longitude: 10.424582,
    story_id: 1
)

picture_06.save!

picture_07 = Picture.create(
    title: 'Horse.',
    description: 'Horse enjoys weather.',
    link: link_to_regular_image_07,
    location: 'Semsvannet, Asker',
    latitude: 59.860198,
    longitude: 10.415467,
    story_id: 1,
    advice_id: 1
)

picture_07.save!

picture_08 = Picture.create(
    title: 'View over lake towards north.',
    description: 'Charming view.',
    link: link_to_regular_image_08,
    location: 'Semsvannet, Asker',
    latitude: 59.856720,
    longitude: 10.408549,
    story_id: 1,
    advice_id: 1
)

picture_08.save!

picture_09 = Picture.create(
    title: 'Autumn afternoon.',
    description: 'Pleasing view.',
    link: link_to_regular_image_09,
    location: 'Semsvannet, Asker',
    latitude: 59.854532,
    longitude: 10.413417,
    story_id: 1,
    advice_id: 1
)

picture_09.save!

#####

## Users

#####

User.create(
    email: "ok@ok.ok",
    password: 'heyhoheyho',
    password_confirmation: 'heyhoheyho' )

# End of examples for stories



