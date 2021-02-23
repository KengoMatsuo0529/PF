# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it 'is valid with a first name, last name, email, and password' do
      expect(@user).to be_valid
    end

    it 'is invalid without a first name' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("can't be blank") 
    end
   
    it 'is invalid without a last name' do
      @user.last_name = ''
      @user.valid?
      expect(@user.erroesfull_messages).to include("can't be blank")
    end
   
    it 'is invalid without a first name kana' do
      @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("can't be blank") 
    end
   
    it 'is invalid without a last name kana' do
      @user.last_name_kana = ''
      @user.valid?
      expect(@user.erroes.full_messages).to include("can't be blank")  
    end
     
    it 'is invalid without an email address' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
   
    it 'is invalid with a duplicate email address' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'is invalid without @ at email' do
      @user.email = 'sample.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'is invalid without a password' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'is valid with password length > 6' do
      @user.password = '123456'
      expect(@user).to be_valid
    end

    it 'is invalid with password length < 5' do
      @user.password = '12345'
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'is invalid without a password_confirmation' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
