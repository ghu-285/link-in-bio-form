class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def new_item
    render "item_templates/new_item"
  end

  def update_table
    n = Item.new
    n.link_url = params[:query_link_url]
    n.link_description = params[:query_link_description]
    n.thumbnail_url = params[:query_thumbnail_url]
    n.save

    redirect_to("/")
  end

end
