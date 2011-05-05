# css_and_js_files plugin for [RefineryCMS](http://www.refinerycms.com) ([Github](https://github.com/sapnasolutions/sapna-refinery_css_and_js_editor))

By: [Surat Pyari]()

This engine allows you to write/edit css and javascript files without restarting the server.

## Requirements

This engine requires RefineryCMS version >= 0.9.9.16

## Gem Installation

Ensure you have created your application's database

Open your 'Gemfile' and add this line to the bottom:

    gem 'refinerycms-css_and_js_file'

Now run:

		bundle install
    rails generate refinerycms_css_and_js_files
    rake db:migrate

edit your 'application.html.erb' and add these lines

		<% CssAndJsFile.css.each do |css|%>
	  	<%= stylesheet_link_tag css.name+'.css' , :cache => '_'+css.name %>
		<% end %>
		<% CssAndJsFile.js.each do |js|%>
	  	<%= javascript_include_tag js.name+'.js' , :cache => '_'+js.name %>
		<% end %>

Now you can see 'Css And Js Files' tab after restarting your web server.

Note: If you are using Heroku then this will not work as files on Heroku are readonly so you can't be overwrite or delete css and js files