class MoviesController < ApplicationController
 
  before_action :set_movie, only: [:show, :upvote, :edit, :update, :destroy]
  after_action :views_count, only: [:show]
  # GET /movies
  # GET /movies.json
  def check_presence
  params[:title_search].present?
  redirect_to "/"
 end

  def index
    @movies = Movie.all
    @movies = @movies.where("title = ?", params[:title_search].capitalize) if params[:title_search]
      if @movies.empty?
        @movies = Movie.all
      end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end
  # GET /movies/1/edit
  def edit
  end



  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
   respond_to do |format|
      format.html { redirect_to proc { pages_status_video_path }, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
   end
  end


  def upvote
    @movie.increment!(:votes_count)
    redirect_to action: :index
  end

  def views_count
    @movie.increment!(:views_count)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :logo, :country, :year, :author)
    end
end
