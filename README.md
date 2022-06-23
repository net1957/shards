# README

Test application to validate the problem with shards and attribute in models

it use:
 - ruby 3.0.4
 - rails 7.0.3 (without js)
 - sqlite3

to run it:

* bundle
* bin/rails db:setup
* bin/rails server -b 127.0.0.1 -p 3000 -e development

the application start and work.

To see the problem we run it in production mode (it use the same databases that in development)
* bin/rails server -b 127.0.0.1 -p 3000 -e production

the application fail

if you comment the line attribute in the Comment model it work

Comments:

the model user is on the primary db (see ApplicationRecord class).

The model comment is on comdev_fr and comdev_de db.

The shard param select the correct shard (see ComdevRecord class).

No default shard is used.
