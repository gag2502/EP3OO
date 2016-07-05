$(window).load ->
  $('a[data-target]').click (e) ->
    e.preventDefault()
    $this = $(this)
    if $this.data('target') == 'Adicionar ao carrinho'
      url = $this.data('addurl')
      new_target = "Remover"
    else
      url = $this.data('removeurl')
      new_target = "Adicionar ao carrinho"
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.find('span').html(new_target)
      $this.data('target', new_target)
