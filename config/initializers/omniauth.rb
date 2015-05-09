Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1449270005365680', '2c0d4bf47a6bd1282d4e680ac0e907cd'
end
