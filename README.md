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

## Usage

By inheriting from `Rails::Engine` all files in `lib/assets` and
`vendor/assets` have been added to the asset pipeline (for free). This
means you can reference any of the files located in this gem as if they
were in your own project. This does present a problem that if two files
are named the same the first one found in the load path
(`Rails.application.config.assets.paths`) will be used.

``` sass
// application.css.sass in app/assets/stylesheets/application.css
//= require equip
```

There is a Rakefile that can be used to precompile all the assets to be
used on a demo page:

``` sh
$ rake assets
```

By default it will create the assets in `public/assets` which has been
git ignored.

## Todo

[x] Create rake task to precompile all assets on a release
[ ] Create mini-website that links to latest precompiled assets
