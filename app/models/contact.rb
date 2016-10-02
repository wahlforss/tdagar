class Contact < MailForm::Base
	attribute :namn,	:validate => true
	attribute :alder, 	:validate => true
	attribute :telefon, :validate => true
	attribute :who_are_you, :validate => true
	attribute :stockholm, :validate => true
	attribute :nickname, :captcha => true

	def headers 
		{
			:subject => "Contact Form",
			:to => "trettiodagar30@gmail.com",
			:from => %("#{namn}")
		}
	end
end
