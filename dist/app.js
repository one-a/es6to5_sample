"use strict";

var Greeter = function() {
  var Greeter = function Greeter(message) {
    this.message = message;
  };

  Object.defineProperties(Greeter.prototype, {
    greet: {
      writable: true,

      value: function() {
        var element = document.querySelector('#message');
        element.innerHTML = this.message;
      }
    }
  });

  return Greeter;
}();

var greeter = new Greeter('Hello, world!');
greeter.greet();
