const loremIpsum = require('lorem-ipsum');

var _user$project$Native_Lorem = (function() {
  var ipsum = _elm_lang$core$Native_Scheduler.nativeBinding(function(callback) {
    callback(_elm_lang$core$Native_Scheduler.succeed(
      loremIpsum()
    ));
  });

  return {
    ipsum: ipsum
  };
})();
