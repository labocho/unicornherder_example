require "bundler/setup"
Bundler.require

class App < Sinatra::Base
  get '/' do
    TZInfo::Data::Version::STRING + "\n"
  end

  get '/env' do
    ENV.map {|k, v| [k, v].join("=") }.join("\n")
  end
end
