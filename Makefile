config:
	@docker run \
		--rm \
		-v rubygems_clinickr:/usr/local/bundle \
		ruby \
		bash -c "gem install sinatra puma byebug"

server:
	@docker run \
		--rm \
		-v $(CURDIR):/app \
		-v rubygems_clinickr:/usr/local/bundle \
		-w /app \
		-p 3000:3000 \
		ruby \
		bash -c "ruby server.rb -s puma"

run.tests:
	@docker run \
		--rm \
		-v $(CURDIR):/app \
		-v rubygems_clinickr:/usr/local/bundle \
		-w /app \
		ruby \
		bash -c "ruby unit_tests.rb"