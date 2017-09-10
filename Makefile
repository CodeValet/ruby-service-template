#
# Ruby service
#

all: check

# Verification tasks
#######################################
check: spec features analyze

analyze: depends
	./scripts/ruby bundle exec rubocop

spec: depends
	./scripts/ruby bundle exec rspec -c

features: depends
	./scripts/ruby bundle exec cucumber -c

#######################################

#
#######################################
run: depends
	./scripts/ruby bundle exec puma

depends: Gemfile
	./scripts/ruby bundle install

#######################################


# Cleanup tasks
#######################################
clean:
	rm -rf vendor/

#######################################


.PHONY: all check clean run \
			depends spec features analyze
