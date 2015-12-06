// -------- Zombie config ---------
var Browser = require("zombie");
Browser.localhost("0.0.0.0", 3000);
var browser = new Browser();


// ------------ Tests -------------

// Home page test
describe("User visits index page", function() {
	// before tests
  before(function(done) {
    browser.visit("/", done);
  });

  // run tests
  describe("check page title", function() {
    it("should be 'Hello World'", function() {
      browser.assert.text("title", "Hello World");
    });
  });
});

// Signup page test
describe("User visits signup page", function() {
	// before tests
	before(function(done) {
    browser.visit("/signup", done);
  });

	// run tests
	describe("submits signup form", function() {
		// fill out form
	  before(function(done) {
	    browser
	      .fill("username", "johnsmith")
	      .fill("email", "johnsmith@gmail.com")
	      .fill("password", "password")
	      .fill("repeat_password", "password")
	      .pressButton("Signup", done);
	  });

	  it("user already exsists", function() {
	  	browser.assert.element(".sweet-alert.showSweetAlert")
	  });
	});
});

// Login page test
describe("User visits login page", function() {
	// before tests
	before(function(done) {
    browser.visit("/login", done);
  });

	// run tests
	describe("submits login form", function() {
		// fill out form
	  before(function(done) {
	    browser
	      .fill("username", "johndoe")
	      .fill("password", "password")
	      .pressButton("Login", done);
	  });
	  // check form responce
	  it("should be successfull", function() {
	    browser.assert.url("/");
	  });
	});
});