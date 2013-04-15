# Equip

Everyday Hero Stylesheet and Javascript Framework.

This gem originally began life as a Twitter customisation but has since
grown its own legs. For backwards compatability development will occur
in a separate branch until it is ready for prime time.

## Development

Rails is fairly opinioned on where files should live. We are free to
break those opinions but they are pretty good.

> app/assets is for assets that are owned by the application, such as
> custom images, JavaScript files or stylesheets.
>
> lib/assets is for your own libraries’ code that doesn’t really fit
> into the scope of the application or those libraries which are shared
> across applications.
>
> vendor/assets is for assets that are owned by outside entities, such
> as code for JavaScript plugins and CSS frameworks.

Because we are building a framework to be used by all EDH applications I
believe most of our code will live in `lib`. Anything that we depend on
like `normalize.css` will live in `vendor`.

## Installation

Include in your gemfile:

``` ruby
gem 'equip', github: 'everydayhero/equip', branch: 'tc_4_jb'
```

Locally you can test how this works by including the local version
instead of the version on GitHub.

``` ruby
gem 'equip', path: '~/path/to/equip'
```

## Todo

[ ] Create rake task to precompile all assets on a release
[ ] Create mini-website that links to latest precompiled assets
