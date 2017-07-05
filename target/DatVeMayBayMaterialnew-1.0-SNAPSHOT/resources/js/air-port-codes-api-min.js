var apc = function(t, e) {

    var n = this,
        o = {},
        r = "https://www.air-port-codes.com/api/v1/",
        a;
    return n = {
        request: function(e) {
            n[t](e);
        },
        init: function() {
            for (var t in e) "key" !== t && "secret" !== t && (o[t] = e[t]);
        },
        autocomplete: function(t) {
            o.term = t, n.doAjax();
        },
        multi: function(t) {
            o.term = t, n.doAjax();
        },
        single: function(t) {
            o.iata = t, n.doAjax();
        },
        countries: function() {
            n.doAjax();
        },
        states: function() {
            
            n.doAjax();
        },
        doAjax: function() {
            a.post(r + t, o, function(t) {
                t = JSON.parse(t), t.status ? n.onSuccess(t) : n.onError(t);
            });
        }
    }, a = {
        x: function() {
            if ("undefined" !== typeof XMLHttpRequest) return new XMLHttpRequest;
            for (var t = ["MSXML2.XmlHttp.6.0", "MSXML2.XmlHttp.5.0", "MSXML2.XmlHttp.4.0", "MSXML2.XmlHttp.3.0", "MSXML2.XmlHttp.2.0", "Microsoft.XmlHttp"], e, n = 0; n < t.length; n++) try {
                e = new ActiveXObject(t[n]);
                break
            } catch (t) {}
            return e;
        },
        send: function(t, n, o, r, c) {
            void 0 === c && (c = !0);
            var i = a.x();
            i.open(o, t, c), i.onreadystatechange = function() {
                4 === i.readyState && n(i.responseText);
            }, "POST" === o && (i.setRequestHeader("Content-type", "application/x-www-form-urlencoded"), i.setRequestHeader("APC-Auth", e.key), e.secret && i.setRequestHeader("APC-Auth-Secret", e.secret)), i.send(r)
        },
        post: function(t, e, n, o) {
            var r = [];
            for (var c in e) r.push(encodeURIComponent(c) + "=" + encodeURIComponent(e[c]));
            a.send(t, n, "POST", r.join("&"), o);
        }
    }, n.init(), n
};