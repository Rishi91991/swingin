SwingIn
=======

Setup steps

1) bundle install

2) rake db:create

3) rake db:migrate

4) start app by executing "rails s" on terminal.

5) For Active-Admin URL: 'http://localhost:3000/admin/login'
   Default Admin ID: 'admin@example.com' & Password: 'password'

6) To run in production mode u need to do following,
    -> To precompile assets execute "RAILS_ENV=production rake assets:precompile" on terminal.

    -> To start server execute "rails s -e production".
