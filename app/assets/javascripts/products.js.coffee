$ ->
  $(window).on("process_mosaic", ->
    # remove styles which were added in case JS was disabled
    $(".product.unprocessed").find(".mosaic-overlay").attr("style", "");
    $(".product.unprocessed").find(".mosaic-backdrop").attr("style", "");
    $(".product.unprocessed").mosaic(
      animation: 'slide'
    )
    $(".product.unprocessed").removeClass("unprocessed")
  )

  $(window).trigger("process_mosaic")

  if $('.pagination').length
    $(window).scroll ->
      if $(window).scrollTop() > $(document).height() - $(window).height() - 1200
        url = $('.pagination li.next a').attr('href')
        if url
          $('.pagination').text("Fetching more products...")
          $.getScript(url)
    $(window).scroll()
