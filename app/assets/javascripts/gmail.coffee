$ ->
  handler = Gmaps.build('Google')
  handler.buildMap {
    provider: {
      disableDefaultUI: true
    }
    internal: id: 'map'
  }, ->
    markers = handler.addMarkers([ {
      'lat': 53.9080613
      'lng': 27.4413269
    } ])
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
    handler.getMap().setZoom(17)
