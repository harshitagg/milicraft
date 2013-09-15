The website is hosted at http://milicraft.herokuapp.com/.
Code: https://github.com/harshitagg/milicraft
CI: https://travis-ci.org/harshitagg/milicraft

To run this project on local machine follow these steps:
1. bundle install
2. rake db:migrate
3. rake db:seed
4. rails s
5. Goto: http://localhost:3000

Home page lists all the different post available. Clicking on a title of the post will show the complete version of the
post. The post page also shows user comments for that particular post.

The project has two models i.e. Post and Comment. Each post can have many comments.

Added REST Crud API for 'Post' model, use following curl commands to test them:
  POST: curl -X POST -d '<post><title>REST</title><text>very good</text></post>' http://localhost:3000/posts.xml --header "Content-Type:application/xml" -v
  UPDATE: curl -X PUT -d '<post><title>REST Updated</title><text>very good</text></post>' http://localhost:3000/posts/{id}.xml --header "Content-Type:application/xml" -v
  GET: curl -X GET http://localhost:3000/posts/{id}.xml --header "Content-Type:application/xml" -v
  DELETE: curl -X DELETE http://localhost:3000/posts/{id}.xml --header "Content-Type:application/xml" -v

Unit, functional and integration tests have been added. Both models have unit tests and Postscontroller test have functional and integration tests.

The commenting feature on post page has been implemented using AJAX.
