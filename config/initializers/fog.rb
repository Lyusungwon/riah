CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJNQTAM75N4LH2SSA',       # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'imgofseoul'                          # required
end