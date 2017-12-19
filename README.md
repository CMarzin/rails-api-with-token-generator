# Example of a rails 5 api with token generatora and upload base 64 image
___

### For testing I recommend using [Postman](https://www.getpostman.com/docs/) :)

## Working on local
- Clone the repo

```bash
git clone https://github.com/CMarzin/rails-api-with-token-generator.git
```

- Install dependency
```bash
bundle install
```

- Run migration and seed
```bash
rails db:migrate && rails db:seed
```
- Run the server
```
rails s
```

## Working on production env ( [Heroku](https://heroku.com) )
I assume you already have the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed

___
### WARNING
Rails 5 disables autoloading in production.

The three options are:

1) Move lib/json_web_token.rb into app/lib/ so rails loads it automatically
2) Use eager loading instead of autoloading: config.eager_load_paths << Rails.root.join('lib')
3) Force rails to allow autoloading: config.enable_dependency_loading = true

__I choose to do the first option__

Thanks to [Kevin Holler](https://disqus.com/by/kevinholler/) who discovered the issue.
___

- Create an app heroku
- Add the heroku remote
```bash
heroku git:remote -a the-name-of-your-app
```
- Push to heroku
```bash
git push heroku master
```

That's it :)

___
This repo is made after use these two tutorial :
- [Token-based authentication with Ruby on Rails 5 API (Example) | hack.guides()](https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api)
- [Handling file upload using Ruby on Rails 5 API (Example) | hack.guides()](https://www.pluralsight.com/guides/ruby-ruby-on-rails/handling-file-upload-using-ruby-on-rails-5-api#file-upload-using-paperclip)

