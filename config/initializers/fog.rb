CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJC66LL3QDE4FVULQ',       # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'imgofseoul'                          # required
end