require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Rails.application.secrets,
    :aws_secret_access_key  => Rails.application.secrets.aws_secret_access_key,
    :region                 => 'ap-northeast-1'
  }
  config.cache_dir = "tmp/uploads"
  config.fog_directory  = 'dev-tech-salon'
  config.fog_public     = false
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  config.storage = :fog
end
