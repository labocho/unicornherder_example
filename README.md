# unicornherder with capistrano like structure example

# preparation

```
$ brew install pipenv
$ pipenv install
$ cd app.old
$ bundle
$ cd ../app.new
$ bundle
```


# run

```
$ ln -snf app.old current && cd current
$ bundle exec pipenv run unicornherder -p ../unicorn.pid -u unicorn -- --config-file unicorn.rb

# another shell
$ curl localhost:8080
1.2019.2
$ ln -snf app.new current
$ kill -USR2 $(cat unicorn.pid)
$ curl localhost:8080
1.2019.3
$ kill -QUIT $(cat unicorn.pid.oldbin)
$ kill -QUIT $(cat unicorn.pid)
```

