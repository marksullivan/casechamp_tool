Rails.application.routes.draw do
  # Routes for the Interest_indication resource:
  # CREATE
  get "/interest_indications/new", :controller => "interest_indications", :action => "new"
  post "/create_interest_indication", :controller => "interest_indications", :action => "create"

  # READ
  get "/interest_indications", :controller => "interest_indications", :action => "index"
  get "/interest_indications/:id", :controller => "interest_indications", :action => "show"

  # UPDATE
  get "/interest_indications/:id/edit", :controller => "interest_indications", :action => "edit"
  post "/update_interest_indication/:id", :controller => "interest_indications", :action => "update"

  # DELETE
  get "/delete_interest_indication/:id", :controller => "interest_indications", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
