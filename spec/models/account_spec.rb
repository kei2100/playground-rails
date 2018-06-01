require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:account) { build(:account, login_id: SecureRandom.alphanumeric(16)) }

  describe '#save' do
    subject { account.save }
    it { is_expected.to be_truthy }
  end

  describe '#find' do
    before do
      account.save
    end
    subject { Account.find_by(login_id: account.login_id) }
    it { is_expected.to eq(account) }
  end
end
