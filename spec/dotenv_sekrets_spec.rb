require "spec_helper"

RSpec.describe DotenvSekrets do
  it "has a version number" do
    expect(DotenvSekrets::VERSION).not_to be nil
  end

  it 'augments dotenv file list with their encrypted version' do
    files = [
      ".env",
      ".env.enc",
      ".env.test",
      ".env.test.enc",
      ".env.test.local",
      ".env.test.local.enc"
    ]
    env_filenames = subject.env_files.map {|s| Pathname.new(s).basename.to_s}
    expect(env_filenames).to match_array files
  end
end
