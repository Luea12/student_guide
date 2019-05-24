# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.

# Login, Token Validation, Register CSS & JS
Rails.application.config.assets.precompile += %w( access.js access.css )
Rails.application.config.assets.precompile += %w( register.js register.css )

# Admin CSS & JS
Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( admin_home.js admin_home.css )
Rails.application.config.assets.precompile += %w( student_tokens.js student_tokens.css )
Rails.application.config.assets.precompile += %w( teacher_tokens.js teacher_tokens.css )
Rails.application.config.assets.precompile += %w( event_tokens.js event_tokens.css )

# Student CSS & JS
Rails.application.config.assets.precompile += %w( student.js student.css )
Rails.application.config.assets.precompile += %w( student_home.js student_home.css )
Rails.application.config.assets.precompile += %w( student_schedule.js student_schedule.css )

# Teacher CSS & JS
Rails.application.config.assets.precompile += %w( teacher.js teacher.css )
Rails.application.config.assets.precompile += %w( teacher_home.js teacher_home.css )
Rails.application.config.assets.precompile += %w( teacher_schedule.js teacher_schedule.css )


Rails.application.config.assets.precompile += %w( search_schedule.js search_schedule.css )
