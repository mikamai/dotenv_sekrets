module DotenvSekrets
  Dotenv::Environment.class_eval do
    def read
      if @filename =~ /\.enc$/
        Sekrets.read(@filename) || raise(Errno::ENOENT)
      else
        File.open(@filename, "rb:bom|utf-8", &:read)
      end
    end
  end
end
