class MoviesController < ApplicationController
before_action :authenticate_user! #, except: [:index , :show]
  def index
   @mv = Movie.all
   @comment = Comment.new
  end

  def show
  @movie = Movie.find(params[:id])
  @comment = Comment.new
  end

 def new
   @movie = Movie.new
 end

  def create
   @movie = Movie.new(movie_params)
   @movie.user_id = current_user.id
   if(@movie.save!)
     redirect_to :root
   end

  end

  protected

  def movie_params
   params.require(:movie).permit(:title, :description , :boxoffice , :poster)
  end

end
