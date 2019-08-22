// { "framework": "Vue" }
"use weex:vue";

/******/
(function(modules) { // webpackBootstrap
 /******/ // The module cache
 /******/
 var installedModules = {};
 /******/
 /******/ // The require function
 /******/
 function __webpack_require__(moduleId) {
 /******/
 /******/ // Check if module is in cache
 /******/
 if (installedModules[moduleId]) {
 /******/
 return installedModules[moduleId].exports;
 /******/
 }
 /******/ // Create a new module (and put it into the cache)
 /******/
 var module = installedModules[moduleId] = {
 /******/
 i: moduleId,
 /******/
 l: false,
 /******/
 exports: {}
 /******/
 };
 /******/
 /******/ // Execute the module function
 /******/
 modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
 /******/
 /******/ // Flag the module as loaded
 /******/
 module.l = true;
 /******/
 /******/ // Return the exports of the module
 /******/
 return module.exports;
 /******/
 }
 /******/
 /******/
 /******/ // expose the modules object (__webpack_modules__)
 /******/
 __webpack_require__.m = modules;
 /******/
 /******/ // expose the module cache
 /******/
 __webpack_require__.c = installedModules;
 /******/
 /******/ // define getter function for harmony exports
 /******/
 __webpack_require__.d = function(exports, name, getter) {
 /******/
 if (!__webpack_require__.o(exports, name)) {
 /******/
 Object.defineProperty(exports, name, {
                       /******/
                       configurable: false,
                       /******/
                       enumerable: true,
                       /******/
                       get: getter
                       /******/
                       });
 /******/
 }
 /******/
 };
 /******/
 /******/ // getDefaultExport function for compatibility with non-harmony modules
 /******/
 __webpack_require__.n = function(module) {
 /******/
 var getter = module && module.__esModule ?
 /******/
 function getDefault() {
 return module['default'];
 } :
 /******/
 function getModuleExports() {
 return module;
 };
 /******/
 __webpack_require__.d(getter, 'a', getter);
 /******/
 return getter;
 /******/
 };
 /******/
 /******/ // Object.prototype.hasOwnProperty.call
 /******/
 __webpack_require__.o = function(object, property) {
 return Object.prototype.hasOwnProperty.call(object, property);
 };
 /******/
 /******/ // __webpack_public_path__
 /******/
 __webpack_require__.p = "";
 /******/
 /******/ // Load entry module and return exports
 /******/
 return __webpack_require__(__webpack_require__.s = 0);
 /******/
 })
/************************************************************************/
/******/
([
  /* 0 */
  /***/
  (function(module, exports, __webpack_require__) {

   "use strict";


   var _App = __webpack_require__(1);

   var _App2 = _interopRequireDefault(_App);

   function _interopRequireDefault(obj) {
   return obj && obj.__esModule ? obj : {
   default: obj
   };
   }

   _App2.default.el = '#root';
   new Vue(_App2.default);

   /***/
   }),
  /* 1 */
  /***/
  (function(module, exports, __webpack_require__) {

   var __vue_exports__, __vue_options__
   var __vue_styles__ = []

   /* styles */
   __vue_styles__.push(__webpack_require__(2))

   /* script */
   __vue_exports__ = __webpack_require__(3)

   /* template */
   var __vue_template__ = __webpack_require__(4)
   __vue_options__ = __vue_exports__ = __vue_exports__ || {}
   if (
       typeof __vue_exports__.default === "object" ||
       typeof __vue_exports__.default === "function"
       ) {
   if (Object.keys(__vue_exports__).some(function(key) {
                                         return key !== "default" && key !== "__esModule"
                                         })) {
   console.error("named exports are not supported in *.vue files.")
   }
   __vue_options__ = __vue_exports__ = __vue_exports__.default
   }
   if (typeof __vue_options__ === "function") {
   __vue_options__ = __vue_options__.options
   }
   __vue_options__.__file = "/usr/src/app/raw/98850cfae63af922aa9889e6703ca38e/App.vue"
   __vue_options__.render = __vue_template__.render
   __vue_options__.staticRenderFns = __vue_template__.staticRenderFns
   __vue_options__._scopeId = "data-v-0e528bc8"
   __vue_options__.style = __vue_options__.style || {}
   __vue_styles__.forEach(function(module) {
                          for (var name in module) {
                          __vue_options__.style[name] = module[name]
                          }
                          })
   if (typeof __register_static_styles__ === "function") {
   __register_static_styles__(__vue_options__._scopeId, __vue_styles__)
   }

   module.exports = __vue_exports__


   /***/
   }),
  /* 2 */
  /***/
  (function(module, exports) {

   module.exports = {
   "panel": {
   "marginTop": "20",
   "paddingBottom": "10",
   "borderBottomWidth": "2",
   "borderStyle": "solid",
   "borderColor": "rgb(220,220,220)"
   },
   "text": {
   "marginLeft": "20",
   "fontSize": "40"
   }
   }

   /***/
   }),
  /* 3 */
  /***/
  (function(module, exports, __webpack_require__) {

   "use strict";


   Object.defineProperty(exports, "__esModule", {
                         value: true
                         });
   //
   //
   //
   //
   //
   //
   //
   //
   //
   //

   var navigator = weex.requireModule('navigator');
   var modal = weex.requireModule('modal');
   exports.default = {
   data: function data() {
   return {
   lists: [{
           name: 'AnimationTest',
           hash: '8d28476fdcc7dd8f0efa674892e83829'
           }]
   };
   },

   methods: {
   push: function push(hash) {
   var bundleUrl = "http://dotwe.org/raw/dist/" + hash + ".bundle.wx";
   navigator.push({
                  url: bundleUrl,
                  animated: "true"
                  }, function(event) {
                  modal.toast({
                              message: 'callback: ' + bundleUrl
                              });
                  });
   }
   }
   };

   /***/
   }),
  /* 4 */
  /***/
  (function(module, exports) {

   module.exports = {
   render: function() {
   var _vm = this;
   var _h = _vm.$createElement;
   var _c = _vm._self._c || _h;
   return _c('list', {
             staticClass: ["list"]
             }, _vm._l((_vm.lists), function(testcase) {
                       return _c('cell', {
                                 staticClass: ["cell"],
                                 appendAsTree: true,
                                 attrs: {
                                 "append": "tree"
                                 }
                                 }, [_c('div', {
                                        staticClass: ["panel"],
                                        on: {
                                        "click": function($event) {
                                        _vm.push(testcase.hash)
                                        }
                                        }
                                        }, [_c('text', {
                                               staticClass: ["text"]
                                               }, [_vm._v(_vm._s(testcase.name))])])])
                       }))
   },
   staticRenderFns: []
   }
   module.exports.render._withStripped = true

   /***/
   })
  /******/
  ]);