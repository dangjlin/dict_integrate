class WordsController < ApplicationController

	def new 
		@word = Word.new
	end

	def show 
		@word =Word.find(params[:id])
	end

    def create
	  	@word = Word.new(word_params)   
	    if @word.save
	      # Handle a successful save.
	      flash[:success] = "Look up and save successful!"
	      redirect_to @word 
	    else
	      render 'new'
	    end
    end

  private
    def word_params
      params.require(:word).permit(:input_word)
    end


end
