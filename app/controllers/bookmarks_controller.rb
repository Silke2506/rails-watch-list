class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @boomark.save
      redirect_to list_bookmarks_path(@list)
    else
      render :new
    end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end


# def new
#     @list = List.new
#   end

#   def create
#     @list = List.new(list_params)
#     if @list.save
#       redirect_to list_path(@list)
#     else
#       render :new
#     end
#   end
