require "heroku_env_compare/version"
require "json"
require 'set'

module HerokuEnvCompare
  class KeyDiff
    def self.compare(app_a, app_b)
      a_keys = Set.new(JSON.parse(`heroku config --json -a #{app_a}`).keys)
      b_keys = Set.new(JSON.parse(`heroku config --json -a #{app_b}`).keys)
      (a_keys ^ b_keys).to_a
    end
  end
end
