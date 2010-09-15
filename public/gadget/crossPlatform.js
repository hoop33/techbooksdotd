/* Directives for the JSLint JavaScript verifier at jslint.com */
/*jslint browser: true, onevar: true, plusplus: true, eqeqeq: true, bitwise: true, 
         nomen: false */
/*global window: false, gadgets: false, _IG_Prefs: false, _args: false, 
         widget: false, openDatabase: false, System: false, 
         _IG_FetchXmlContent: false, UWA: false, _IG_FetchContent: false, 
         ActiveXObject: false,_IG_AdjustIFrameHeight: false */

// The crossPlatform namespace.
var crossPlatform = window.crossPlatform || {};

// addHandler: Attach a function as a handler to a DOM event
crossPlatform.addHandler = function (element, event, handler) {
  if (!!element.addEventListener) {
    // W3C DOM Level 2 compliant
    element.addEventListener(event, handler, false);
  } else {
    // Other browsers
    var oldHandler = element['on' + event];
    element['on' + event] = function() {
      if (!!oldHandler) {
        oldHandler();
      }
      handler();
    };
  }
};

// Initialize the platform variables

// iGoogle API (actually two APIs in one, or one API with two distinct versions)
if (!!window.gadgets && !!window.gadgets.util) {
  crossPlatform.api     = 'igoogle';
  crossPlatform.version = 'gadgets.*';
  crossPlatform.prefs   = new gadgets.Prefs();
} else if (!!window._gel) {
  crossPlatform.api     = 'igoogle';
  crossPlatform.version = 'legacy';
  crossPlatform.prefs   = new _IG_Prefs();
}
if (crossPlatform.api === 'igoogle') {
  crossPlatform.emptyPref = '';
  // iGoogle gadgets can be hosted in many places. Try to figure out where we are.
  crossPlatform.host = '';
  if (window._args instanceof Function) {
    crossPlatform.container = _args().synd || _args().container;
  }
  switch (crossPlatform.container) {
    case 'calendar':     break;
    case 'spreadsheets': break;
    case 'ig':        crossPlatform.container = 'igoogle';  break;
    case 'gm':        crossPlatform.container = 'mail';     break;
    case 'mpl':       crossPlatform.container = 'maps';     break;
    case 'gd':        crossPlatform.container = 'desktop';  break;
    case 'myaolgrs':  crossPlatform.container = 'my.aol';   break;
    case 'gasp2': 
      crossPlatform.container = 'start';
      crossPlatform.host      = _args().pid; 
      break;
    case 'enterprise': 
      crossPlatform.container = 'sites';
      crossPlatform.host      = document.referrer.split('/').splice(0, 2).join('/');
      break;
    default:
      if (/^navclient/.test(crossPlatform.host)) {
        // Catches any 'navclient_xx' hosts, known (ff, ie) or unknown
        crossPlatform.container = 'toolbar';
      } else {
        // Catches blank container strings, 'blogger', 'open', and any new ones
        crossPlatform.container = (crossPlatform.container || 'unknown');
        crossPlatform.host      = document.referrer.split('/')[2];
      }
  }
} else if (!!window.UWA) {
  // Netvibes Universal Widget API
  crossPlatform.api = 'netvibes';
  crossPlatform.emptyPref = undefined;
} else if (!!window.System) {
  // Windows Desktop API
  crossPlatform.api = 'windows';
  crossPlatform.emptyPref = '';
} else if (!!window.widget) {
  // Several platforms use a widget.* namespace
  if (!!widget.getAttention) {
    // Opera, could be either desktop or mobile
    crossPlatform.api = 'opera';
    crossPlatform.emptyPref = '';
  } else if (!!widget.menu) {
    // Windows Mobile built-in widgets
    crossPlatform.api = 'windows_mobile';
    crossPlatform.emptyPref = null;
  } else {
    if (!!window.menu) {
      // Symbian S60 Web Run-Time
      crossPlatform.api = 'wrt';
    } else {
      // Mac OS X Dashboard
      crossPlatform.api = 'mac';
    }
    crossPlatform.emptyPref = undefined;
  }
} else if (!!window.isIPhone) {
  // iPhone native app framework
  crossPlatform.api = 'iphone';
  crossPlatform.emptyPref = undefined;
  crossPlatform.data = {};
  crossPlatform.db = openDatabase('crossPlatform', '1.0', '', 65535);
  crossPlatform.db.transaction(
    function(transaction) {
      transaction.executeSql('create table if not exists cpStorage ' +
        '(name varchar(255) not null primary key, value text null);', []);
      transaction.executeSql('select name, value from cpStorage', [], 
        function (transaction, results) {
          for (crossPlatform.i = 0; crossPlatform.i < results.rows.length; 
               crossPlatform.i += 1) {
            crossPlatform.data[results.rows.item(crossPlatform.i).name] =
              results.rows.item(crossPlatform.i).value;
          }
        });
    });
} else if (!!window.isAndroid) {
  // Android native app framework
  crossPlatform.api = 'android';
  crossPlatform.emptyPref = null;
} else {
  // No known gadget platform
  crossPlatform.api = 'none';
  crossPlatform.emptyPref = null;
}

// Declare the persistent Storage class for name/value data
crossPlatform.Storage = function (name, defaultValue) {
  var myName = name, 
      myValue;

  switch (crossPlatform.api) {
    case 'igoogle':   myValue = crossPlatform.prefs.getString(name);     break;
    case 'netvibes':  myValue = widget.getValue(name);                   break;
    case 'mac':
    case 'wrt':
    case 'windows_mobile':
    case 'opera':     myValue = widget.preferenceForKey(name);           break;
    case 'windows':   myValue = System.Gadget.Settings.readString(name); break;
    case 'iphone':    myValue = crossPlatform.data[name];                break;
    default:          myValue = crossPlatform.getCookie(name);
  }
  if (myValue === crossPlatform.emptyPref) {
    myValue = defaultValue.toString();
  }

  // Retrieve the value
  this.get = function () {
    return myValue;
  };

  // Save a value
  this.set = function (value) {
    if (myValue !== value) {
      myValue = value.toString();
      switch (crossPlatform.api) {
        case 'igoogle':  crossPlatform.prefs.set(myName, myValue);            break;
        case 'netvibes': widget.setValue(myName, myValue);                    break;
        case 'mac':
        case 'wrt':
        case 'windows_mobile':
        case 'opera':    widget.setPreferenceForKey(myValue, myName);         break;
        case 'windows':  System.Gadget.Settings.writeString(myName, myValue); break;
        case 'iphone':
          crossPlatform.db.transaction(
            function(transaction) {
              transaction.executeSql(
                'insert into cpStorage (name, value) values (?, ?)', 
                [name, value],
                null,
                function (transaction) {
                  transaction.executeSql(
                    'update cpStorage set value = ? where (name = ?)', 
                    [value, name]);
                });
            });
          break;
        default:         crossPlatform.setCookie(myName, myValue);
      }
    }
  };
};

// setCookie and getCookie: Save/retrieve a cookie by name
crossPlatform.setCookie = function (name, value) {
  var mSecPerYear = 1000 * 60 * 60 * 24 * 365,
      cookieExpire;

  if (!value) {
    // Delete the cookie by setting an expiration date in the past 
    cookieExpire = 'Sun, 24-Apr-05 00:00:00 GMT';
  } else {
    // Upsert the cookie by setting an expiration date one year from now
    cookieExpire = (new Date(Number(new Date()) + mSecPerYear)).toUTCString();
  }
  
  document.cookie = name + '=' + value + ';expires=' + cookieExpire + 
                    ';path=' + window.location.pathname;
};
crossPlatform.getCookie = function (name) {
  var cookies = document.cookie.split(';'),
      thisCookie,
      c;
 
  // Iterate through the cookie list, returning the value associated with "name"
  name = name + '=';
  for (c = 0; c < cookies.length; c += 1) {
    thisCookie = cookies[c].replace(/^\s+/, '');
    if (thisCookie.indexOf(name) === 0) {
      return thisCookie.substring(name.length, thisCookie.length);
    }
  }
  // Target "name" not found
  return null;
};

//fetchXML: Retrieve an XML document from url and pass it to callback as a DOM 
crossPlatform.fetchXML = function (url, callback) {
  switch (crossPlatform.api) {
    case 'igoogle':
      if (crossPlatform.version === 'legacy') {
        _IG_FetchXmlContent(url, callback);
      } else {
        gadgets.io.makeRequest(url, function (response) {callback(response.data);}, 
          {'CONTENT_TYPE': gadgets.io.ContentType.DOM});
      }
      break;
    case 'netvibes':
      UWA.Data.getXml(url, callback);
      break;
    default:
      crossPlatform.fetch(url, callback, 'responseXML');
  }
};
// fetchText: Retrieve a text document from url and pass it to callback as a string 
crossPlatform.fetchText = function (url, callback) {
  switch (crossPlatform.api) {
    case 'igoogle':
      if (crossPlatform.version === 'legacy') {
        _IG_FetchContent(url, callback);
      } else {
        gadgets.io.makeRequest(url, callback);
      }
      break;
    case 'netvibes':
      UWA.Data.getText(url, callback);
      break;
    default:
      crossPlatform.fetch(url, callback, 'responseText');
  }
};

// Helper code for content-fetching routines 
crossPlatform.fetch = function (url, callback, propertyName) {
  var xhrFetcher = crossPlatform.getFetcher();
  if (!xhrFetcher) {
    // We were unable to create the XHR object
    callback(null);
  } else {
    xhrFetcher.open('GET', url, true);
    xhrFetcher.onreadystatechange = function () {
      if (xhrFetcher.readyState === 4) {
        // Retrieval complete
        if (!!xhrFetcher.timeout) {
          clearTimeout(xhrFetcher.timeout);
        }
        if (xhrFetcher.status >= 400) {
          // Returned an HTTP error
          callback(null);
        } else {
          // Returned successfully
          callback(xhrFetcher[propertyName]);
        }
        // We're done with this fetcher object
        crossPlatform.fetchers.push(xhrFetcher);
      }
    };
    xhrFetcher.timeout = setTimeout(callback, 60000);
    xhrFetcher.send(null);
  }
};
crossPlatform.fetchers = [];
crossPlatform.getFetcher = function () {
  if (!!crossPlatform.fetchers.length) {
    return crossPlatform.fetchers.pop();
  } else {
    if (!!window.XMLHttpRequest) {
      return new XMLHttpRequest(); // Most browsers
    } else if (!!window.ActiveXObject) {
      return new ActiveXObject('Microsoft.XMLHTTP'); // Some IE
    } else {
      return null;  // Really old browser
    }
  }
};

//nodeValue: Extract the text value of a DOM node
crossPlatform.nodeValue = function(node) {
  return (node.innerText || node.text || node.textContent || 
          node.childNodes.length ? node.childNodes[0].data : null);
};

crossPlatform.getWidth = function (element) {
  if (element === window) {
    return document.body.offsetWidth || document.body.parentNode.clientWidth;
  } else {
    return element.offsetWidth || element.innerWidth;
  }
};
crossPlatform.getHeight = function (element) {
  if (element === window) {
    return document.body.offsetHeight || document.body.parentNode.clientHeight;
  } else {
    return element.offsetHeight || element.innerHeight || element.clientHeight;
  }
};
crossPlatform.adjustSize = function () {
  switch (crossPlatform.api) {
    case 'igoogle':
      try {
        if (crossPlatform.version === 'legacy') {
          _IG_AdjustIFrameHeight();
        } else if (!!gadgets.window) {
          gadgets.window.adjustHeight();
        }
      } catch (e) {}  // .adjustHeight is unreliable on some Google containers
      break;
    case 'mac':
    case 'opera':
      window.resizeTo(crossPlatform.getWidth(window), 
                      crossPlatform.getHeight(window)); 
      break;
    case 'windows':
      var adjuster = function () {
        document.body.style.height = document.body.scrollHeight + 'px';
      };
      setTimeout(adjuster, 100);
      break;
  }
};

// escapeHTML: Make a string safe for display within page content
crossPlatform.escapeHTML = function (text) {
  if (!!text) {
    text = String(text).replace(/'/g, '&apos;').replace(/"/g, '&quot;');
    text = text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
  }
  return text;
};
