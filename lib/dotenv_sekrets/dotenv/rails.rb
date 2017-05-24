Dotenv::Railtie.class_eval do
  private

  def dotenv_files
    DotenvSekrets.env_files
  end
end
