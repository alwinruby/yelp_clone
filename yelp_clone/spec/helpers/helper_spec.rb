require 'rails_helper'

def sign_up
  visit('/')
  click_link('Sign Up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def sign_in
  visit('/')
  click_link('Sign In')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  click_button('Log in')
end
