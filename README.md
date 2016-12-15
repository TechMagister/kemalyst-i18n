# kemalyst-i18n

I18n integration to kemalyst framework

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  kemalyst-i18n:
    github: TechMagister/kemalyst-i18n
```

## Usage

Create a file : config/i18n.cr
```crystal
require "kemalyst-i18n"

Kemalyst::I18n.config do |config|
	# Backend default to I18n::Backend::Yaml
	# config.backend = I18n::Backend::Yaml.new
	
	# Default locale ( default to "en" )
	# config.default_locale = "en"
	
	# Separator between sub levels of data (default to '.')
	# ex : I18n.translate("some#thing") instead of "some.thing" 
	# config.default_separator = '.'
	
	# Returns the current exception handler. Defaults to an instance of
    # I18n::ExceptionHandler.
    # config.exception_handler = ExceptionHandler.new
	
	# The path from where the translations should be loaded
	config.load_path += ["./locales"]
end

# !! don't forget to init !!
I18n.init

```

## Contributing

1. Fork it ( https://github.com/TechMagister/kemalyst-i18n/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [TechMagister](https://github.com/TechMagister) Arnaud Fernandés - creator, maintainer
