var appMain = require('../appMain');
window.Applab = require('./applab');
if (typeof global !== 'undefined') {
  global.Applab = window.Applab;
}
var levels = require('./levels');
var skins = require('./skins');

window.applabMain = function (options) {
  options.skinsModule = skins;
  appMain(window.Applab, levels, options);
};
