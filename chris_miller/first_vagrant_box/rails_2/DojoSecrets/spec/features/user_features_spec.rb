require 'rails_helper'
feature 'User features' do
	before do
		#calling factory girl create method
		@user = create(:user)
	end
	feature "/user sign-up" do
		before(:each) do
			visit "/users/new"
		end
		scenario 'visits sign-up page' do
			expect(page).to have_field('user_form[name]')
			expect(page).to have_field('user_form[email]')
			expect(page).to have_field('user_form[password]')
			expect(page).to have_field('user_form[password_confirmation]')
		end
		scenario "with improper inputs, redirects back to sign in and shows validations" do
			click_button 'Join'
			expect(current_path).to eq('/users/new')
			expect(page).to have_text("can't be blank")
		end
		scenario "with proper inputs, create user and redirects to login page" do
			fill_in 'user_form[email]', with: 'curry@warriors.com'
			fill_in 'user_form[name]', with: 'curry'
			fill_in 'user_form[password]', with: 'password'
			fill_in 'user_form[password_confirmation]', with: 'password_confirmation'
			click_button 'Join'
			expect(current_path).to eq("/login")
		end
	end	
end