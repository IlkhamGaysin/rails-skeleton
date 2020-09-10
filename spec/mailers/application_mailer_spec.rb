require 'rails_helper'

describe ApplicationMailer do
  describe '#default_params' do
    subject(:default_params) { described_class.default_params }

    it { is_expected.to include(from: ApplicationMailer::FROM) }
  end
end
