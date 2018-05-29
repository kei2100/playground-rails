require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#authenticate' do
    let(:password) { SecureRandom.alphanumeric(8) }
    let(:input_password) {}
    let(:user) { create(:user, name: 'bob', password: password) }
    subject { user.authenticate(input_password) }

    context 'input ok' do
      let(:input_password) { password }

      it { is_expected.to be_truthy }
    end

    context 'input ng' do
      let(:input_password) { password + 'a' }

      it { is_expected.to be_falsey }
    end
  end
end
