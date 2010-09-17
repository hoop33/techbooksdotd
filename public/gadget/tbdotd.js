var tbdotd = window.tbdotd || {};

tbdotd.timeout = null;
tbdotd.elements = {
  'apress': null,
  'apress_img_link': null,
  'apress_img': null,
  'apress_link': null,
  'oreilly': null,
  'oreilly_img_link': null,
  'oreilly_img': null,
  'oreilly_link': null,
  'manning': null,
  'manning_img': null,
  'manning_link': null,
  'credit': null
};
//tbdotd.url = 'http://localhost:4567/deals.json';
tbdotd.url = 'http://techbooksdotd.heroku.com/deals.json';

tbdotd.init = function() {
  var id;
  for (id in tbdotd.elements) {
    tbdotd.elements[id] = document.getElementById(id);
  }
  tbdotd.load();
};
crossPlatform.addHandler(window, 'load', tbdotd.init);

tbdotd.load = function() {
  crossPlatform.fetchText(tbdotd.url, tbdotd.receiveDeals);
};

tbdotd.receiveDeals = function(responseText) {
  var deals;
  if (!responseText) {
    tbdotd.delay = tbdotd.delay || 5 * 1000;
    if (tbdotd.delay <= 40 * 1000) {
      tbdotd.delay *= 2;
      window.setTimeout(tbdotd.load, tbdotd.delay);
    }
  } else {
    var deals = (typeof responseText === "string") ? JSON.parse(responseText) : JSON.parse(responseText.text);
    for (var i = 0; i < deals.length; i++) {
      var deal = deals[i];
      tbdotd.updateDeal(deal);
    };
  }
  // Refresh every hour
  if (!!tbdotd.timeout) {
    window.clearTimeout(tbdotd.timeout);
  }
  tbdotd.timeout = window.setTimeout(tbdotd.load, 60 * 60 * 1000);
};

tbdotd.updateDeal = function(deal) {
  var vendor = deal.vendor_id;
  var vendor_image_link = vendor + "_img_link";
  if (!!tbdotd.elements[vendor_image_link]) {
    tbdotd.elements[vendor_image_link].href = deal.url;
  }
  var vendor_image = vendor + "_img";
  if (!!tbdotd.elements[vendor_image]) {
    tbdotd.elements[vendor_image].src = deal.image_url;
    tbdotd.elements[vendor_image].title = deal.title;
  }
  var vendor_link = vendor + "_link";
  if (!!tbdotd.elements[vendor_link]) {
    if (!!tbdotd.elements[vendor_link].href) {
      tbdotd.elements[vendor_link].href = deal.url;
    }
    tbdotd.elements[vendor_link].innerHTML = tbdotd.fixHtml(deal.title);
  }
};

tbdotd.fixHtml = function(html) {
  if (!!html) {
    // Remove embedded breaks
    html = String(html).replace(/<BR>/gi, "-");
    // Point embedded links to _blank
    html = html.replace(/(<a .*?)>/g, "$1 target=\"_blank\">");
  }
  return html;
};
