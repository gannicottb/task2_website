require "googleajax"
module StaticPagesHelper

  def search_for_recipes(ingredients)
    #set referrer
    GoogleAjax::referrer="drinksonhand.appspot.com"
    Rails.logger.info("set referrer")
    #construct the search string
    search_string = "drink recipe "+ingredients.join(" ")
    Rails.logger.info("search string is #{search_string}")
    #fire off the call
    results = GoogleAjax::Search.web(search_string)[:results]
    Rails.logger.info("results are #{results}")
    return results
  end

  #Clear the session's ingredients
  #def clear_ingredients
  #  session[:ingredients] = [] if !session[:ingredients].nil?
  #end
end
