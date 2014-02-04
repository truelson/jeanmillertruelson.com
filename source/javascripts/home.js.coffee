ready = ->

  currentHash = ->
    url_hash = window.location.hash.replace( '#', '' )
    url_hash or= 'home'

  $( ".#{ currentHash() }-link" ).css( "color", "#aaa" )

  $(".nav-link").click ->
    old_hash = currentHash()
    new_hash = this.hash.replace( '#', '' )

    $(".#{old_hash}-link").css( "color", "#fff" )
    $(".#{new_hash}-link").css( "color", "#aaa" )

    $(".page").fadeOut( 'fast' )
      .promise()
      .done( ->
        $(".#{new_hash}").fadeIn())

  $(".#{currentHash()}").fadeIn()

$( document ).ready( ready )
