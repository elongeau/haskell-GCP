build:
	@stack build

run: build
	@stack exec gcp-exe