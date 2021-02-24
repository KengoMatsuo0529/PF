require 'rails_helper'

describe HealthCenter, type: :model do
  describe '#create' do
    before do
      @health_center = FactoryBot.build(:health_center)
    end

    it 'is valid with a name, a phone_number, email, and password' do
      expect(@health_center).to be_valid
    end

    it 'is invalid without a name' do
      @health_center.name = ''
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include("can't be blank")
    end

    it 'is invalid without an email address' do
      @health_center.email = ''
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include("Email can't be blank")
    end

    it 'is invalid with a duplicate email address' do
      @health_center.save
      another_health_center = FactoryBot.build(:health_center)
      another_health_center.email = @health_center.email
      another_health_center.valid?
      expect(another_health_center.errors.full_messages).to include('Email has already been taken')
    end

    it 'is invalid without @ at email' do
      @health_center.email = 'sample.com'
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include('Email is invalid')
    end

    it 'is invalid without a password' do
      @health_center.password = ''
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include("Password can't be blank")
    end

    it 'is valid with password length > 6' do
      @health_center.password = '123456'
      expect(@health_center).to be_valid
    end

    it 'is invalid with password length < 5' do
      @health_center.password = '12345'
      @health_center.password_confirmation = '12345'
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'is invalid without a password_confirmation' do
      @health_center.password_confirmation = ''
      @health_center.valid?
      expect(@health_center.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
