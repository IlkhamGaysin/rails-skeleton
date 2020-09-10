require 'rails_helper'

describe ApplicationDecorator do
  describe '.collection_decorator_class' do
    subject(:collection_decorator_class) { described_class.collection_decorator_class }

    it { is_expected.to eql(PaginatingDecorator) }
  end
end
