import "phoenix_html";
import $ from 'jquery';
import jQuery from 'jquery';
import { Page } from "./views/page/page";

/* Application is executed on each new request */

(function Application(){
  var modules = {
    "page": {
      run: function(){
        "use strict";
        Page.run();
      }
    }
  };
  $(document).ready(() => {
    var current_module = $('body').attr('class');
    //Loading current module
    if ( modules[current_module] ){
      if (typeof modules[current_module].run === "function"){
        modules[current_module].run();
      }
    }
  });
})();
