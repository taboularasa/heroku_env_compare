module HerokuEnvCompare
  class Heroku
    def self.config(app_name)
      `heroku config --json -a #{app_name}`
    end
  end
end
