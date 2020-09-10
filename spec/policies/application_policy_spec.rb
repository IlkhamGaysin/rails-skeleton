require 'rails_helper'

describe ApplicationPolicy do
  describe '#user and #record' do
    subject(:policy) { described_class.new(user, record) }

    let(:user)   { instance_double('User') }
    let(:record) { instance_double('Record') }

    before do
      allow(record).to receive(:to_model).and_return(record)
    end

    it { is_expected.to have_attributes(user: user, record: record) }
  end
end
