# EQUIP

Everyday Hero's opinionated implementation of Twitter's Bootstrap for Compass, via the [Compass Twitter Bootstrap](https://github.com/vwall/compass-twitter-bootstrap) gem.

## Usage (without asset pipeline)

**Add it to your Gemfile**

    gem 'equip', :git => 'git@github.com:everydayhero/equip.git'

**...or local install for development**

    gem 'equip', :path => "~/path/to/equip"

**Bundle it!**

    bundle install

**Add it to your Compass config.rb**

    require 'equip'
    project_type = :rails

**Import it into your SASS file**

    //= require_self
    //= require_tree .
    
    @import equip

## Usage with asset pipeline(Rails 3.2)

**As above, but add the new compass-rails gem.  See https://github.com/Compass/compass-rails for more info.**

    gem 'compass-rails'

**Add it to your Application.rb**
        
    # Enable the asset pipeline
    config.assets.enabled = true

**Import it into your SASS file**

    //= require_self
    //= require_tree .
    
    @import equip

**Create `config/compass.rb` with the following:**

    require 'equip'
    project_type = :rails

## On Heroku

If you're deploying to Heroku, you'll need to prevent Rails from initialising when precompiling assets at deploy time. In your `application.rb`:

    config.assets.initialize_on_precompile = false

## Reference [Font Awesome](http://fortawesome.github.com/Font-Awesome/)

Font Awesome is used for scalable fonts, for now.

## Using Javascripts with Rails Asset Pipeline

Javascript Libraries are located in vendor/assets/javascripts

Include them individually or 

    //=require bootstrap-all

to include all files

## TWITTER BOOTSTRAP

Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more.

To get started -- checkout http://twitter.github.com/bootstrap!

## AUTHORS

**Mark Otto**

+ http://twitter.com/mdo
+ http://github.com/markdotto

**Jacob Thornton**

+ http://twitter.com/fat
+ http://github.com/fat


##Copyright and License

Copyright 2011 Twitter, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
