jQuery(document).on 'turbolinks:load', ->
  $('select').select2
    multiple: true
    ajax: {
      url: '/categories'
      data: (params) ->
        {
          term: params.term
        }
      dataType: 'json'
      delay: 500
      processResults: (data, params) ->
        results: _.map(data, (el) ->
          {
            name_highlight: el.full_name
            id: el.id
            name: el.name
          }
        )
        cache: true
    }
    escapeMarkup: (markup) -> markup
    minimumInputLength: 2
    templateResult: (item) -> item.name_highlight
    templateSelection: (item) -> item.name