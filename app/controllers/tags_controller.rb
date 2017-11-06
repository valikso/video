class TagsController < ApplicationController
def show
  @tag = Tag.find_by(name: params[:id])
  @movies = @tag.movies
end
end
