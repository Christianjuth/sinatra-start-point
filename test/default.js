var Browser = require("zombie");

// We're going to make requests to localhost:3000
Browser.localhost("0.0.0.0", 3000);
var browser = new Browser();


// All your tests live inside this block
describe('User visits index page', function() {

  before(function(done) {
    browser.visit("/", done);
  });

  describe('Check title', function() {
    it('should be "Hello World"', function() {
      browser.assert.text("title", "Hello World");
    });
  });
});