require "dotenv_sekrets/version"

require 'sekrets'
require 'dotenv'
require 'rails'
require 'dotenv-rails'
require 'dotenv_sekrets/dotenv/environment'
require 'dotenv_sekrets/dotenv/rails'


module DotenvSekrets
  module_function

  def root
    Dotenv::Railtie.root
  end

  def env_files
    [
      root.join(".env.#{Rails.env}.local"),
      (root.join(".env.local") unless Rails.env.test?),
      root.join(".env.#{Rails.env}"),
      root.join(".env")
    ].compact.map { |f| [f, "#{f}.enc"] }.flatten
  end
end
