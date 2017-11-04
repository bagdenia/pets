init = ->
  if (document.getElementById('map') ==null)
    console.log('Map box does not exist!')
    return

  if $('.lng').length
    lat = $('.lat').attr('lat')
    lng = $('.lng').attr('lng')

  if $('#user_lat').length
    lat = $('#user_lat').val()
    lng = $('#user_lng').val()

  if lat == null || lng == null
    return

  myMap = new (ymaps.Map)('map', {
    center: [
      lat
      lng
    ]
    zoom: 9
    controls: []
  })
  mySearchControl = new (ymaps.control.SearchControl)(
    options:
      noPlacemark: true)
  mySearchResults = new (ymaps.GeoObjectCollection)(null, hintContentLayout: ymaps.templateLayoutFactory.createClass('$[properties.name]'))
  myMap.controls.add mySearchControl

  window.myPlacemark = new (ymaps.Placemark)([
    lat
    lng
  ], {},
    draggable: $('#user_lat').length
    preset: 'islands#whiteStretchyIcon')

  myMap.geoObjects.add myPlacemark
  myMap.geoObjects.add mySearchResults


  mySearchResults.events.add 'click', (e) ->
    e.get('target').options.set 'preset', 'islands#redIcon'
    coords= e.get('target').geometry.getCoordinates()
    # alert  coords
    e.get('target').options.set 'visible', false
    window.myPlacemark.geometry.setCoordinates coords
    document.getElementById('user_lat').value = coords[0]
    document.getElementById('user_lng').value = coords[1]
    return

  myPlacemark.events.add 'dragend', (e) ->
    # Получение ссылки на объект, который был передвинут.
    thisPlacemark = e.get('target')
    # Определение координат метки
    coords = thisPlacemark.geometry.getCoordinates()
    # и вывод их при щелчке на метке
    thisPlacemark.properties.set 'balloonContent', coords
    document.getElementById('user_lat').value = coords[0]
    document.getElementById('user_lng').value = coords[1]
    return

  mySearchControl.events.add('resultselect', (e) ->
    index = e.get('index')
    mySearchControl.getResult(index).then (res) ->
      mySearchResults.add res
      return
    return
  ).add 'submit', ->
    mySearchResults.removeAll()
    return

ready = ->
  ymaps.ready init

$(document).on('page:load', ready)

