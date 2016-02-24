class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	defalut from: "test@test.com"

	 def purchase_receipt purchase
	 	@purchase = purchase
	 	mail to: purchase.email, subject: "Thanks!"
	 end
end
