# AssetsHelper [![Gem Version](https://badge.fury.io/rb/assets_helper.svg)](http://badge.fury.io/rb/assets_helper) [![Gem Total Downloads](https://img.shields.io/gem/dt/assets_helper.svg)](https://rubygems.org/gems/assets_helper)

assets helper is the helper that use to include css and javascript by controller name automatically, it mean that it include only css and javascript file in the controller that you are standing. For details Document: http://geekhmer.github.io/blog/2013/12/19/assets-helper-gem/

## Installation

Add this line to your application's Gemfile:

    gem 'assets_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install assets_helper

## Usage

Step1: Add before_filter :include_css, :include_javascript in application_controller.rb

    class ApplicationController < ActionController::Base
      protect_from_forgery

      before_filter :include_css, :include_javascript
    end

Step2: Add = yield :asset in your layout file (example: application.html.haml)

    !!!
    %html
      %head
        %title JongEat
        = stylesheet_link_tag    "application", :media => "all"
        = javascript_include_tag "application"
        = yield :asset
        = csrf_meta_tags

Step3: Example if you create a controller name homes:
    
    $ rails generate controller homes

Step4: Go to app/assets/javascripts and create a folder name homes like your controller (homes) you create below. And input javascript file that you use for controller homes in this folder ( app/assets/javascripts/homes ), and no need to include in application.js file.

Step5: Go to app/assets/stylesheets and create a folder name homes like your controller(homes) you create below. And input css file that you use for controller homes in this folder(app/assets/stylesheets), and no need to include or import in application.css file.


So whenever you run homes controller, it include only css and javascript file that you use for homes controller, and can make your project run fast.


So when you go to the Browser and type http://localhost:3000/homes it include only javascripts files and css files that you use for homes controller.

For more details: http://geekhmer.github.io/blog/2013/12/19/assets-helper-gem/

## License

[MIT License](https://github.com/Bunlong/assets_helper/blob/master/LICENSE)

Copyright (c) 2013 - Present, [Bunlong VAN](https://github.com/Bunlong) ( Maintainer )
