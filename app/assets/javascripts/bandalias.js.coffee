this.Bandalias =
  initialize: ->
    $("input[name*='download_link']").on "focus", (e) ->
      if $(this).val() == ""
        $(this).val("http://")