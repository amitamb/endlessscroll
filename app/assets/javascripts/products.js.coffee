$ ->
  $(window).on("process_mosaic", ->
    $(".product.unprocessed").mosaic(
      animation: 'slide'
    )
    $(".product.unprocessed").removeClass("unprocessed")
  )

  $(window).trigger("process_mosaic")

  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination li.next a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 1200
        $('.pagination').text("Fetching more products...")
        $.getScript(url)
    $(window).scroll()
