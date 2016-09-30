class Contact < MailForm::Base
	attribute :namn,	:validate => true
	attribute :Ålder, 	:validate => true
	attribute :telefon, :validate => true
	attribute :who_are_you, :validate => true
	attribute :nickname, :captcha => true

	def headers 
		{
			:subject => "Contact Form",
			:to => "alfred@wahlforss.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end
