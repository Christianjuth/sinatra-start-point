# Sinatra

### Setup environment
Requirements
* [Ruby v2 and Rubygems](https://rvm.io/) _(via RVM recommended)_
* [Bundler](http://bundler.io/)
* [NodeJS & NPM](https://nodejs.org/en/)
* [GruntJS](http://gruntjs.com)
* [Bower](http://bower.io/)

```shell
  # install node modules and gems
  npm install
```
_This command runs `bundle install` so you do not have to run that yourslef._

### Running Sinatra
```shell
  # this command starts shotgun on port 3000
  npm start
  
  # this command force stops shotgun
  npm stop
```

### Compiling
```shell
  # compile once
  grunt once

  # continious compiling
  grunt
```

### Testing
```
  # test using mocha
  npm test
```
