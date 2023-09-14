class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create] # Asegura que solo los usuarios autenticados puedan crear comentarios
  
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.build(comment_params)
      @comment.user = current_user
  
      if @comment.save
        redirect_to @post, notice: "Comentario agregado exitosamente."
      else
        # Manejo de errores si la validación del comentario falla
        render "posts/show"
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  