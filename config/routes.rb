Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", {:controller => "items", :action => "new_item"})

  post("/insert_item", {:controller => "items", :action => "update_table"})
end
