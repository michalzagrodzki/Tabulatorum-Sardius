# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Extend native Builder.Marker Class to create Rich Marker
class RichMarkerBuilder extends Gmaps.Google.Builders.Marker #inherit from builtin builder

  # override create_marker method
  # sets custom marker style
  create_marker: ->
    options = _.extend @marker_options(), @rich_marker_options()
    @serviceObject = new RichMarker options #assign marker to @serviceObject

  # options for creating Marker
  rich_marker_options: ->
    marker = document.createElement("div")
    # setting up CSS class - 'marker_container'
    marker.setAttribute('class', 'marker_container')
    marker.innerHTML = @args.title
    { content: marker }

  # create Info Window
  # override method
  create_infowindow: ->
    return null unless _.isString @args.infowindow

    boxText = document.createElement("div")
    # setting up CSS class - 'marker_container'
    boxText.setAttribute('class', 'marker_container')
    boxText.innerHTML = @args.lat
    @infowindow = new InfoBox(@infobox(boxText))

  # add @bind_infowindow() for < 2.1

  infobox: (boxText)->
    content: boxText
    pixelOffset: new google.maps.Size(-75, -25)
    boxStyle:
      width: "150px"

# Function that takes argument (markers) and creates map in view.
@buildMap = (markers)->

  # variable for style of map
  # style of map is Pale Dawn by Adam Krogh from http://atmist.com
  mapStyle = [{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2e5d4"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":20}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]}]

  # Dependency injection
  handler = Gmaps.build 'Google', { builders: { Marker: RichMarkerBuilder} }

  # Method for creating map in View
  handler.buildMap { provider: { styles: mapStyle }, internal: {id: 'map'} }, ->
    markers = handler.addMarkers(markers)
    handler.bounds.extendWith(markers)
    handler.fitMapToBounds()

