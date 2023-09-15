# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string
#  legend     :text
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord

  #Validaciones
  validates :title, presence: true
  validates :legend, presence: true
  validates :foto, presence: true

  #Relaciones
  #Un post pertenece a un usuario
  belongs_to :user
  
  #Defino borrado en cascada para los posts que tengan comentarios.
  has_many :comments, dependent: :destroy
  
  #Los posts van a tener una foto
  has_one_attached :foto
end
