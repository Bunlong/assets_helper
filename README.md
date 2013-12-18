# AssetsHelper

assets helper is the helper that use to include css and javascript by controller name automatically, it mean that it include only css and javascript file in the controller that you are standing.

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

Step3: If you create a controller name: homes, so go to app/assets/javascripts create a folder name: homes (app/assets/javascripts/homes) and go to app/assets/css create a folder name homes (app/assets/css/homes). And input javascripts files and css files that you use in homes controllers.

So when you go to the Browser and type http://localhost:3000/homes it include only javascripts files and css files that you use for homes controller.

For any question pls email me: bunlong.van@gmail.com