require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:account) { build(:account, login_id: SecureRandom.alphanumeric(16)) }

  describe '#save' do
    subject { account.save }
    it { is_expected.to be_truthy }
  end

  describe '#find' do
    before do
      account.save!
    end
    subject { Account.find_by(login_id: account.login_id) }
    it { is_expected.to eq(account) }
  end

  describe '#authenticate' do
    let(:password) { SecureRandom.alphanumeric(16) }
    before do
      account.password = password
      account.save!
    end
    subject { account.authenticate(input) }

    context 'input correct password' do
      let(:input) { password }
      it { is_expected.to be_truthy }
    end
    context 'input incorrect password' do
      let(:input) { 'aaaaaaaa' }
      it { is_expected.to be_falsey }
    end
  end
end
