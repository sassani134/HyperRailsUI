rails new HyperRailsUi -c tailwind -d postgresql

cd HyperRailsUi

rails db:create

touch Starter.md Source.md

bundle add view_component

bundle add --group="development ,test" rspec-rails

rails generate rspec:install

bundle add --group="development ,test" faker

bundle add --group="development ,test" rubocop

bundle add --group="development ,test" rubocop-rails

bundle add --group="development ,test" rubocop-performance

bundle add --group="development ,test" rubocop-rspec

bundle exec rubocop --auto-gen-config

bundle add --group="development ,test" brakeman

bundle add --group="development ,test" bundler-audit

bundle add --group="development ,test" ruby_audit

bundle add --group="development ,test" rubocop-rspec_rails

rails active_storage:install

rails action_text:install