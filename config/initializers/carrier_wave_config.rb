CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJLAMANY7RLQXLHMQ',       # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'us-west-1',                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3-us-west-1.amazonaws.com/the-schedule/' 
                                # optional, defaults to nil
  }
  
  # https://s3-us-west-1.amazonaws.com/the-schedule/development/myBackyard-small.jpg
  
  # This is teh bucket name
  config.fog_directory  = 'the-schedule'                          # required
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end