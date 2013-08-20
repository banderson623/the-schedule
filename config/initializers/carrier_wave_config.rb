CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJLAMANY7RLQXLHMQ',       # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'us-west-2',                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    :endpoint               => ' the-schedule.s3-website-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  # This is teh bucket name
  config.fog_directory  = 'the-schedule'                          # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end