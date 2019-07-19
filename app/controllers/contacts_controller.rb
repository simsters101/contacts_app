class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.html.erb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )

    @contact.save

    redirect_to "/contacts/#{@contact.id}"
  end

  def new
    render 'new.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.save
    redirect_to action: "show", id: @contact.id
  end


  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to '/contacts'
  end
end
