class Item < ActiveRecord::Base
	def cart_action(current_user_id)
  if $redis.sismember "cart#{current_user_id}", id
    "Remover"
  else
    "Adicionar ao carrinho"
  end
end
end
