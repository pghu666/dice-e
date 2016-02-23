class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	defalut from: "dice e stripe payments <ryo0131asai@gmail.com>"

	 def purchase_receipt purchase
	 	@purchase = purchase
	 	email to: purchase.email, subject: "Thanks!"
	 end
end
