class SearchController < ApplicationController

  def create

  	word = "%#{params[:keyword]}%"

  	@questions = Question.where("title LIKE ? OR text LIKE ?", word, word)

  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.json { render json: @questions }
  		format.js
  	end

  end

end