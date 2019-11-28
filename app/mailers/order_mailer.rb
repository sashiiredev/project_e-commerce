class OrderMailer < ApplicationMailer
  default from: 'lucas.lensi@gmail.com'

  def admin_order_email(order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = order.user
    @order = order
    order.items.each do |item|
      attachments[item.image_url] = File.read("#{Rails.root}/app/assets/images/#{item.image_url}")
    end
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'un user vient de faire une commande chez nous !')
  end
end
