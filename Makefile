rspec:
	docker compose run --rm -e "RAILS_ENV=test" app bundle exec rspec
