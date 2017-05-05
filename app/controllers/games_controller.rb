class GamesController < ApplicationController
  def hello_query

    if params[:fullname]
       @fullname = params[:fullname].upcase
       if @fullname.start_with? 'A'
        @message = "Hey its A"
       end
    else
       @fullname = "blank"
    end
    render "hello.html.erb"
  end

  def number_game
    answer = 50
    @message1 = "Let's pick a number between 1 and 100, if you guess right, you win!"
      @guess_number = params[:guess].to_i
      if @guess_number == answer
        @message2 = "You've won!!!!!"
      elsif @guess_number < answer
        @message2 = "Guess higher! Attempt again" 
      elsif @guess_number > answer
        @message2 = "Guess lower!! Attempt again" 
      end
    render "game.html.erb"
  end 

  def url_game
    @url_game = params[:num]
    answer = 50
    @message1 = "Let's pick a number between 1 and 100, if you guess right, you win!"
      @guess_number = params[:num].to_i
      if @guess_number == answer
        @message2 = "You've won!!!!!"
      elsif @guess_number < answer
        @message2 = "Guess higher! Attempt again" 
      elsif @guess_number > answer
        @message2 = "Guess lower!! Attempt again" 
      end
    render "url_game.html.erb"
  end

  def form_game
    render "form.html.erb"
  end

  def form_result
    answer = 50
      @form_guess = params[:form_guess].to_i
      if @form_guess == answer
        @message2 = "You've won!!!!!"
      elsif @form_guess < answer
        @message2 = "Guess higher! Attempt again" 
      elsif @form_guess > answer
        @message2 = "Guess lower!! Attempt again" 
      end
    render "form_result.html.erb"
  end

end
