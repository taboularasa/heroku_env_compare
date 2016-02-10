require 'spec_helper'

describe HerokuEnvCompare::KeyDiff do
  let(:app_a_json) do
    {
      foo: 1,
      baz: 2
    }.to_json
  end

  let(:app_b_json) do
    {
      foo: 1,
      baz: 2,
      different: 3
    }.to_json
  end

  before(:each) do
    allow(HerokuEnvCompare::Heroku)
      .to receive(:config).with('app_a').and_return(app_a_json)

    allow(HerokuEnvCompare::Heroku)
      .to receive(:config).with('app_b').and_return(app_b_json)
  end

  describe '::compare' do
    it 'returns the symmetric difference of env keys for two apps' do
      expect(HerokuEnvCompare::KeyDiff.compare('app_a', 'app_b'))
        .to eq(%w(different))
    end
  end
end
