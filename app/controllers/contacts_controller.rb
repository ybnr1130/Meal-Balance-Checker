class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def send_user
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to sent_user_contacts_path
    else
      render :new
    end
  end

  def sent_user
  end

  private

  def contact_params
    params.require(:contact).permit(:object, :body, :user_id)
  end

end
