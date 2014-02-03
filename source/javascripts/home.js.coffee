ready = ->

  $(".nav-link").click ->
    hash = this.hash.replace( '#', '' )
    $(".page").fadeOut( 'fast' )
      .promise()
      .done( ->
        $(".#{hash}").fadeIn())

  url_hash = window.location.hash.replace( '#', '' )
  url_hash or= 'home'

  $(".#{url_hash}").fadeIn()

$( document ).ready( ready )
