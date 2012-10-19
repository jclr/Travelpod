require 'spec_helper'

describe 'Pledges' do
  describe 'GET /pledges' do

    fixtures :users, :cities

    it 'should show 2 errors', js: true do
        visit users_path
        click_on 'New User'
        fill_in 'Name', with: 'Jacy'
        click_button 'Create User'
        error_message = '1 error prohibited this user from being saved:'
        specific_error2 = "Password can't be blank"
        page.should have_content(error_message);
        page.should have_content(specific_error2);
        fill_in 'user_password', with: 'password'
        click_on 'Create User'
        page.should have_content 'successfull'
    end
  end
end

