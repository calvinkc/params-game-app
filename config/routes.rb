Rails.application.routes.draw do
  get "/hello" => "games#hello_query"
  get "/game" => "games#number_game"
  get "/url_game/:num" => "games#url_game"
  
  get "/form_game" => "games#form_game"

  post "/form_result" => "games#form_result"
  
end
