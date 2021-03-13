# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( homes.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( iziModal.min.js )
Rails.application.config.assets.precompile += %w( music_choices.js )
Rails.application.config.assets.precompile += %w( TweenMax.min.js )
Rails.application.config.assets.precompile += %w( contacts.js )
Rails.application.config.assets.precompile += %w( news.js )
Rails.application.config.assets.precompile += %w( aimsition.js )
Rails.application.config.assets.precompile += %w( musics.js )
Rails.application.config.assets.precompile += %w( none.js )
