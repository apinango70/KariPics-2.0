# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :text
#  user_id    :bigint           not null
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord

  # Relaciones
  
  # Un comentario pertenece a un usuario
  belongs_to :user

  # Un comentario pertenece a un post
  belongs_to :post
  
end
