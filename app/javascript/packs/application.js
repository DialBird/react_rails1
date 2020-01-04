import 'core-js/stable';
import 'regenerator-runtime/runtime';

import 'jquery';

import 'bootstrap';
import 'parsleyjs';
import 'popper.js';

import '../src/main'

import '../src/stylesheets/application.scss';

require('@rails/ujs').start();
require('@rails/activestorage').start();
// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
