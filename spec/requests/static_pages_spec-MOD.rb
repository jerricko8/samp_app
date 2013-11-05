require 'spec_helper'
describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	def page_attr(page_describe, page_title, page_content)

		describe "#{page_describe} page" do
			it "should have the content '#{page_content}'" do
				visit "/static_pages/#{page_title}".downcase
				expect(page).to have_content("#{page_content}")
			end

			it "should have the title '#{page_title}" do
				visit "static_pages/#{page_title}".downcase
				expect(page).to have_title("#{base_title} | #{page_title}")
			end
		end		
	

		# if below methods are outside def block, rspec gives errors
		# else it runs OK which doesn't make sense I think. 
		#Find out WHY? do we need to define a class first?
		page_attr("Home", "home", "Sample App")
		page_attr("About Us", "about", "About Us")
		page_attr("Help", "help", "Help")
		page_attr("Contact Us", "contact", "Contact Us")
	end
end


