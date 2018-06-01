require 'rails_helper'

RSpec.describe Account, type: :model do
  describe '#save' do
    let(:account) { build(:account, login_id: SecureRandom.alphanumeric(16)) }
    subject { account.save }

    it { is_expected.to be_truthy }
    it {
      subject
      expect(Account.find_by(login_id: account.login_id)).to eq(account)
    }
  end
end
