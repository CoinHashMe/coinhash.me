module Rack
  # Exposes a PHP Session in Rack Applications as a Hash

  class PHPSession
    # @param [Hash] options the options to configure the middleware
    # @option options [String] :session_name ('PHPSESSID') The name of the PHP Session
    # @option options [String] :session_file_path ('.') The folder where PHP Session files are stored

    def initialize(app, options = {})
      @app = app
      @options = { :session_name => 'PHPSESSID', :session_file_path => '/var/lib/php5' }.merge(options)
    end
  end
end
