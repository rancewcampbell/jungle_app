require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should save when password and password_confirmation are the same' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user.save!

      expect(@user.id).to be_present
    end

    it 'should not save when password and password_confirmation are different' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'notpassword')
      @user.save

      expect(@user.id).not_to be_present
    end

    it 'should not save if the password is less than 8 characters' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'pass', password_confirmation: 'pass')
      @user.save

      expect(@user.id).not_to be_present
    end

    it 'should not save if email is not included' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: '', password: 'password', password_confirmation: 'password')
      @user.save

      expect(@user.id).not_to be_present
    end

    it 'should not save if the email already exists' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user.save!

      @user2 = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user2.save
      expect(@user2.id).not_to be_present
    end

    it 'should not save if email the email already exists and check is case insensitive' do
      @user = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user.save!

      @user2 = User.new(first_name: 'Rance', last_name: 'Campbell', email: 'RANCE@gmail.com', password: 'password', password_confirmation: 'password')
      @user2.save
      expect(@user2.id).not_to be_present
    end

    it 'should not save if first name is not included' do
      @user = User.new(first_name: '', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user.save

      expect(@user.id).not_to be_present
    end

    it 'should not save if last name is not included' do
      @user = User.new(first_name: 'Rance', last_name: '', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password')
      @user.save

      expect(@user.id).not_to be_present
    end
  end
end
