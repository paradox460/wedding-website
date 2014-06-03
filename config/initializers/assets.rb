Wedding::Application.configure do
  config.assets.precompile += %w(static.css)
  config.sass.preferred_syntax = :sass
  config.sass.sourcemap = true
  config.sass.debug_info = true
end
