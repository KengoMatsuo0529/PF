require 'rails_helper'

describe Message, type: :model do
  describe '#create' do
    before do
      @message = FactoryBot.build(:message)
    end

    it 'is valid with a name, a phone_number, email, and password' do
      expect(@message).to be_valid
    end

    it 'is invalid without a message' do
      @message.message = ''
      @message.valid?
      expect(@message.errors.full_messages).to include("can't be blank")
    end

    it 'is invalid without an user_checked' do
      @message.user_checked = ''
      @message.valid?
      expect(@message.errors.full_messages).to include("Email can't be blank")
    end

    it 'is invalid with a duplicate email address' do
      @message.save
      another_message = FactoryBot.build(:message)
      another_message.email = @message.email
      another_message.valid?
      expect(another_message.errors.full_messages).to include('Email has already been taken')
    end

    it 'is invalid without @ at email' do
      @message.email = 'sample.com'
      @message.valid?
      expect(@message.errors.full_messages).to include('Email is invalid')
    end

    it 'is invalid without a password' do
      @message.password = ''
      @message.valid?
      expect(@message.errors.full_messages).to include("Password can't be blank")
    end

    it 'is valid with password length > 6' do
      @message.password = '123456'
      expect(@message).to be_valid
    end

    it 'is invalid with password length < 5' do
      @message.password = '12345'
      @message.password_confirmation = '12345'
      @message.valid?
      expect(@message.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'is invalid without a password_confirmation' do
      @message.password_confirmation = ''
      @message.valid?
      expect(@message.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
