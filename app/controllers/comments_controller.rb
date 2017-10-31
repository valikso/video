class CommentsController < ApplicationController
	def create
   	@movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(user_id: current_user.id, movie_id: @movie.id, body: comment_params[:body])
		redirect_to movie_path(@movie)
  end

  private
   def comment_params
    params.require(:comment).permit(:body, :user_id, :movie_id)
  end
end
