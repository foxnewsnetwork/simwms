/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
  wrapInEval: false,
  fingerprint: {
    extensions: ["js", "css"]
  }
});

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.
app.import('bower_components/bootstrap/dist/css/bootstrap.css');
app.import('bower_components/bootstrap/dist/css/bootstrap.css.map', { destDir: "assets" });
app.import('bower_components/jquery-timeago/jquery.timeago.js');
app.import("bower_components/lodash/lodash.min.js",{
  exports: {
    "lodash": ["_"]
  }
});
app.import('vendor/video-js/video.js', {
  exports: {
    "videojs": ["videojs"]
  }
});
app.import(app.bowerDirectory + "/webcamjs/webcam.min.js");
app.import(app.bowerDirectory + "/webcamjs/webcam.swf", {
  destDir: "assets"
});
app.import("bower_components/d3/d3.js");
app.import("bower_components/fontawesome/css/font-awesome.css");
app.import("bower_components/fontawesome/fonts/fontawesome-webfont.eot", { destDir: "fonts" });
app.import("bower_components/fontawesome/fonts/fontawesome-webfont.svg", { destDir: "fonts" });
app.import("bower_components/fontawesome/fonts/fontawesome-webfont.ttf", { destDir: "fonts" });
app.import("bower_components/fontawesome/fonts/fontawesome-webfont.woff", { destDir: "fonts" });
app.import("bower_components/fontawesome/fonts/fontawesome-webfont.woff2", { destDir: "fonts" });
app.import("bower_components/fontawesome/fonts/FontAwesome.otf", { destDir: "fonts" });

module.exports = app.toTree();