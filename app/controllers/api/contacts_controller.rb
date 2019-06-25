class Api::ContactsController < ApplicationController
  def contact
    render "contact.json.jb"
  end
end
