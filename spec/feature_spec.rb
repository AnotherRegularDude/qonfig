# frozen_string_literal: true

describe 'Initial implementation' do
  specify do
    class Config < Qonfig::DataSet
      setting :serializers do
        setting :json do
          setting :engine, :native
        end
      end

      setting :serializers do
        setting :json do
          setting :option, :test
        end
      end
    end

    class AnotherConfig < Config
      setting :serializers do
        setting :json do
          setting :pekakeka, :chukap
        end
      end

      compose Config
    end
  end
end
