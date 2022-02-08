# frozen_string_literal: true

RSpec.describe Funky do
  it 'has a version number' do
    expect(Funky::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise Funky::Error, 'some message' }
      .to raise_error('some message')
  end
end
