 passport._define("realUserTag_tangram.js",function(){var d,c,b=c=function(h,g){return b.dom?b.dom(h,g):null};b.version="2.0.1.0",b.guid="$BAIDU$",b.key="tangram_guid";var a=window[b.guid]=window[b.guid]||{};(a.versions||(a.versions=[])).push(b.version),b.check=b.check||function(){},b.lang=b.lang||{},b.forEach=function(l,h,m){var k,g,j;if(typeof h=="function"&&l){g=typeof l.length=="number"?l.length:l.byteLength;if(typeof g=="number"){if(Object.prototype.toString.call(l)==="[object Function]"){return l}for(k=0;k<g;k++){j=l[k]||l.charAt&&l.charAt(k),h.call(m||null,j,k,l)}}else{if(typeof l=="number"){for(k=0;k<l;k++){h.call(m||null,k,k,k)}}else{if(typeof l=="object"){for(k in l){l.hasOwnProperty(k)&&h.call(m||null,l[k],k,l)}}}}}return l},b.type=function(){var k={},h=[,"HTMLElement","Attribute","Text",,,,,"Comment","Document",,"DocumentFragment"],l="Array Boolean Date Error Function Number RegExp String",j={object:1,"function":"1"},g=k.toString;return b.forEach(l.split(" "),function(i){k["[object "+i+"]"]=i.toLowerCase(),b["is"+i]=function(m){return b.type(m)==i.toLowerCase()}}),function(m){var i=typeof m;return j[i]?m==null?"null":m._type_||k[g.call(m)]||h[m.nodeType]||(m==m.window?"Window":"")||"object":i}}(),b.isDate=function(g){return b.type(g)=="date"&&g.toString()!="Invalid Date"&&!isNaN(g)},b.isElement=function(g){return b.type(g)=="HTMLElement"},b.isEnumerable=function(g){return g!=null&&(typeof g=="object"||~Object.prototype.toString.call(g).indexOf("NodeList"))&&(typeof g.length=="number"||typeof g.byteLength=="number"||typeof g[0]!="undefined")},b.isNumber=function(g){return b.type(g)=="number"&&isFinite(g)},b.isPlainObject=function(h){var g,i=Object.prototype.hasOwnProperty;if(b.type(h)!="object"){return !1}if(h.constructor&&!i.call(h,"constructor")&&!i.call(h.constructor.prototype,"isPrototypeOf")){return !1}for(g in h){}return g===undefined||i.call(h,g)},b.isObject=function(g){return typeof g=="function"||typeof g=="object"&&g!=null},b.global=b.global||(function(){var h=b._global_=window[b.guid],g=h._=h._||{};return function(j,k,i){if(typeof k!="undefined"){i||(k=typeof g[j]=="undefined"?k:g[j]);g[j]=k}else{if(j&&typeof g[j]=="undefined"){g[j]={}}}return g[j]}})(),b.extend=function(q,y){var j,g,m,z,h,x=1,w=arguments.length,p=q||{},k,v;b.isBoolean(q)&&(x=2)&&(p=y||{}),!b.isObject(p)&&(p={});for(;x<w;x++){g=arguments[x];if(b.isObject(g)){for(m in g){z=p[m],h=g[m];if(z===h){continue}b.isBoolean(q)&&q&&h&&(b.isPlainObject(h)||(k=b.isArray(h)))?(k?(k=!1,v=z&&b.isArray(z)?z:[]):v=z&&b.isPlainObject(z)?z:{},p[m]=b.extend(q,v,h)):h!==undefined&&(p[m]=h)}}}return p},b.browser=b.browser||function(){var h=navigator.userAgent,g={isStrict:document.compatMode=="CSS1Compat",isGecko:/gecko/i.test(h)&&!/like gecko/i.test(h),isWebkit:/webkit/i.test(h)};try{/(\d+\.\d+)/.test(external.max_version)&&(g.maxthon=+RegExp.$1)}catch(i){}switch(!0){case /msie (\d+\.\d+)/i.test(h):g.ie=document.documentMode||+RegExp.$1;break;case /chrome\/(\d+\.\d+)/i.test(h):g.chrome=+RegExp.$1;break;case /(\d+\.\d)?(?:\.\d)?\s+safari\/?(\d+\.\d+)?/i.test(h)&&!/chrome/i.test(h):g.safari=+(RegExp.$1||RegExp.$2);break;case /firefox\/(\d+\.\d+)/i.test(h):g.firefox=+RegExp.$1;break;case /opera(?:\/| )(\d+(?:\.\d+)?)(.+?(version\/(\d+(?:\.\d+)?)))?/i.test(h):g.opera=+(RegExp.$4||RegExp.$1)}return b.extend(b,g),g}(),b.id=function(){var h=b.global("_maps_id"),g=b.key;window[b.guid]._counter=window[b.guid]._counter||1;return function(j,m){var l,k=b.isString(j),i=b.isObject(j),n=i?j[g]:k?j:"";if(b.isString(m)){switch(m){case"get":return i?n:h[n];case"remove":case"delete":if(l=h[n]){if(b.isElement(l)&&b.browser.ie<8){l.removeAttribute(g)}else{delete l[g]}delete h[n]}return n;default:if(k){(l=h[n])&&delete h[n];l&&(h[l[g]=m]=l)}else{if(i){n&&delete h[n];h[j[g]=m]=j}}return m}}if(i){!n&&(h[j[g]=n=b.id()]=j);return n}else{if(k){return h[j]}}return"TANGRAM__PSP_"+b._global_._counter++}}(),b.id.key="tangram_guid",b.lang.Class=(function(){var g=(b._global_=window[b.guid])._instances_;g||(g=b._global_._instances_={});return function(){this.guid=b.id();this._decontrol_||(g[this.guid]=this)}})(),b.lang.Class.prototype.dispose=function(){delete b._global_._instances_[this.guid];for(var g in this){typeof this[g]!="function"&&delete this[g]}this.disposed=true},b.lang.Class.prototype.toString=function(){return"[object "+(this._type_||this.__type||this._className||"Object")+"]"},d=function(g){return b._global_._instances_[g]},b.lang.guid=function(){return b.id()},b.lang.isString=b.isString,b.lang.Event=function(h,g){this.type=h,this.returnValue=!0,this.target=g||null,this.currentTarget=null},b.lang.Class.prototype.fire=b.lang.Class.prototype.dispatchEvent=function(l,h){b.lang.isString(l)&&(l=new b.lang.Event(l)),!this.__listeners&&(this.__listeners={}),h=h||{};for(var p in h){l[p]=h[p]}var p,k,g=this,j=g.__listeners,m=l.type;l.target=l.target||(l.currentTarget=g),m.indexOf("on")&&(m="on"+m),typeof g[m]=="function"&&g[m].apply(g,arguments);if(typeof j[m]=="object"){for(p=0,k=j[m].length;p<k;p++){j[m][p]&&j[m][p].apply(g,arguments)}}return l.returnValue},b.lang.Class.prototype.on=b.lang.Class.prototype.addEventListener=function(k,h,l){if(typeof h!="function"){return}!this.__listeners&&(this.__listeners={});var j,g=this.__listeners;k.indexOf("on")&&(k="on"+k),typeof g[k]!="object"&&(g[k]=[]);for(j=g[k].length-1;j>=0;j--){if(g[k][j]===h){return h}}return g[k].push(h),l&&typeof l=="string"&&(g[k][l]=h),h},b.lang.inherits=function(l,h,p){var k,g,j=l.prototype,m=new Function;m.prototype=h.prototype,g=l.prototype=new m;for(k in j){g[k]=j[k]}return l.prototype.constructor=l,l.superClass=h.prototype,typeof p=="string"&&(g.__type=p),l.extend=function(i){for(var o in i){g[o]=i[o]}return l},l},b.lang.Class.prototype.un=b.lang.Class.prototype.removeEventListener=function(i,g){var j,h=this.__listeners;if(!h){return}if(typeof i=="undefined"){for(j in h){delete h[j]}return}i.indexOf("on")&&(i="on"+i);if(typeof g=="undefined"){delete h[i]}else{if(h[i]){typeof g=="string"&&(g=h[i][g])&&delete h[i][g];for(j=h[i].length-1;j>=0;j--){h[i][j]===g&&h[i].splice(j,1)}}}},b.lang.createClass=function(l,q){q=q||{};var j=q.superClass||b.lang.Class,g=function(){var n=this;q.decontrolled&&(n.__decontrolled=!0),j.apply(n,arguments);for(r in g.options){n[r]=g.options[r]}l.apply(n,arguments);for(var r=0,t=g["r"];t&&r<t.length;r++){t[r].apply(n,arguments)}};g.options=q.options||{};var k=function(){},v=l.prototype;k.prototype=j.prototype;var h=g.prototype=new k;for(var p in v){h[p]=v[p]}var m=q.className||q.type;return typeof m=="string"&&(h.__type=m),h.constructor=v.constructor,g.extend=function(n){for(var i in n){g.prototype[i]=n[i]}return g},g},b.createChain=function(l,h,m){var k=l=="dom"?"$DOM":"$"+l.charAt(0).toUpperCase()+l.substr(1),g=Array.prototype.slice,j=b[l]=b[l]||h||function(i){return b.extend(i,b[l].fn)};return j.extend=function(i){var o;for(o in i){o!="splice"&&(j[o]=function(){var n=arguments[0];l=="dom"&&b.type(n)=="string"&&(n="#"+n);var p=j(n),q=p[o].apply(p,g.call(arguments,1));return b.type(q)=="$DOM"?q.get(0):q})}return b.extend(b[l].fn,i)},b[l][k]=b[l][k]||m||function(){},j.fn=b[l][k].prototype,j},b.overwrite=function(i,g,j){for(var h=g.length-1;h>-1;h--){i.prototype[g[h]]=j(g[h])}return i},b.createChain("event",function(){var g={};return function(h,j){switch(b.type(h)){case"object":return g.originalEvent===h?g:g=new b.event.$Event(h);case"$Event":return h;case"string":var i=new b.event.$Event(h);return typeof j=="object"&&b.forEach(i,j),i}}}(),function(m){var j,q,l,h=this;this._type_="$Event";if(typeof m=="object"&&m.type){h.originalEvent=j=m;for(var k in j){typeof j[k]!="function"&&(h[k]=j[k])}j.extraData&&b.extend(h,j.extraData),h.target=h.srcElement=j.srcElement||(q=j.target)&&(q.nodeType==3?q.parentNode:q),h.relatedTarget=j.relatedTarget||(q=j.fromElement)&&(q===h.target?j.toElement:q),h.keyCode=h.which=j.keyCode||j.which,!h.which&&j.button!==undefined&&(h.which=j.button&1?1:j.button&2?3:j.button&4?2:0);var p=document.documentElement,g=document.body;h.pageX=j.pageX||j.clientX+(p&&p.scrollLeft||g&&g.scrollLeft||0)-(p&&p.clientLeft||g&&g.clientLeft||0),h.pageY=j.pageY||j.clientY+(p&&p.scrollTop||g&&g.scrollTop||0)-(p&&p.clientTop||g&&g.clientTop||0),h.data}typeof m=="string"&&(this.type=m),this.timeStamp=(new Date).getTime()}).extend({stopPropagation:function(){var g=this.originalEvent;g&&(g.stopPropagation?g.stopPropagation():g.cancelBubble=!0)},preventDefault:function(){var g=this.originalEvent;g&&(g.preventDefault?g.preventDefault():g.returnValue=!1)}}),b.merge=function(k,h){var l=k.length,j=0;if(typeof h.length=="number"){for(var g=h.length;j<g;j++){k[l++]=h[j]}}else{while(h[j]!==undefined){k[l++]=h[j++]}}return k.length=l,k},b.createChain("array",function(i){var g=b.array.$Array.prototype,j=Array.prototype,h;b.type(i)!="array"&&(i=[]);for(h in g){j[h]||(i[h]=g[h])}return i}),b.overwrite(b.array.$Array,"concat slice".split(" "),function(g){return function(){return b.array(Array.prototype[g].apply(this,arguments))}}),b.array.extend({unique:function(k){var h=this.length,l=this.slice(0),j,g;"function"!=typeof k&&(k=function(m,i){return m===i});while(--h>0){g=l[h],j=h;while(j--){if(k(g,l[j])){l.splice(h,1);break}}}h=this.length=l.length;for(j=0;j<h;j++){this[j]=l[j]}return this}}),b.query=b.query||function(){function p(D,E){var n,C,B,y,r,A,x,i,z=[];return m.test(D)?(B=RegExp.$2,r=RegExp.$1||"*",b.forEach(E.getElementsByTagName(r),function(o){o.id==B&&z.push(o)})):j.test(D)||D=="*"?b.merge(z,E.getElementsByTagName(D)):g.test(D)?(x=[],r=RegExp.$1,A=RegExp.$2,n=" "+A+" ",E.getElementsByClassName?x=E.getElementsByClassName(A):b.forEach(E.getElementsByTagName("*"),function(o){o.className&&~(" "+o.className+" ").indexOf(n)&&x.push(o)}),r&&(r=r.toUpperCase())?b.forEach(x,function(o){o.tagName.toUpperCase()===r&&z.push(o)}):b.merge(z,x)):k.test(D)&&(i=D.substr(1).split("."),b.forEach(E.getElementsByTagName("*"),function(o){o.className&&(n=" "+o.className+" ",C=!0,b.forEach(i,function(s){~n.indexOf(" "+s+" ")||(C=!1)}),C&&z.push(o))})),z}function l(y,A){var x,t=y,u="__tangram__",z=[];return !A&&v.test(t)&&(x=document.getElementById(t.substr(1)))?[x]:(A=A||document,A.querySelectorAll?(A.nodeType==1&&!A.id?(A.id=u,x=A.querySelectorAll("#"+u+" "+t),A.id=""):x=A.querySelectorAll(t),x):~t.indexOf(" ")?(b.forEach(p(t.substr(0,t.indexOf(" ")),A),function(i){b.merge(z,l(t.substr(t.indexOf(" ")+1),i))}),z):p(t,A))}var m=/^(\w*)#([\w\-\$]+)$/,v=/^#([\w\-\$]+)$/,j=/^\w+$/,g=/^(\w*)\.([\w\-\$]+)$/,k=/^(\.[\w\-\$]+)+$/,w=/\s*,\s*/,h=/\s+/g,q=Array.prototype.slice;return function(s,i,u){if(!s||typeof s!="string"){return u||[]}var o=[];return s=s.replace(h," "),u&&b.merge(o,u)&&(u.length=0),b.forEach(s.indexOf(",")>0?s.split(w):[s],function(n){b.merge(o,l(n,i))}),b.merge(u||[],b.array(o).unique())}}(),b.createChain("dom",function(i,g){var j,h=new b.dom.$DOM(g);if(!i){return h}if(i._type_=="$DOM"){return i}if(i.nodeType||i==i.window){return h[0]=i,h.length=1,h}if(i.length&&h.toString.call(i)!="[object String]"){return b.merge(h,i)}if(typeof i=="string"){i.charAt(0)=="<"&&i.charAt(i.length-1)==">"&&i.length>2?b.dom.createElements&&b.merge(h,b.dom.createElements(i)):b.query(i,g,h)}else{if(typeof i=="function"){return h.ready?h.ready(i):h}}return h},function(g){this.length=0,this._type_="$DOM",this.context=g||document}).extend({size:function(){return this.length},splice:function(){},get:function(g){return typeof g=="number"?g<0?this[this.length+g]:this[g]:Array.prototype.slice.call(this,0)},toArray:function(){return this.get()}}),b.dom.extend({each:function(i){b.check("function","baidu.dom.each");var g,j,h=this.length;for(g=0;g<h;g++){j=i.call(this[g],g,this[g],this);if(j===!1||j=="break"){break}}return this}}),b._util_=b._util_||{},b._util_.eventBase={},void function(h,g){g=h.listener={},window.addEventListener?g.add=function(j,i,k){j.addEventListener(i,k,!1)}:window.attachEvent&&(g.add=function(j,i,k){j.attachEvent("on"+i,k)})}(b._util_.eventBase),void function(l,h){var m=b.id,k=l.queue={},g=k.attaCache=b.global("eventQueueCache"),j=l.listener;k.get=function(v,n,q,p){var w=m(v),i;return g[w]||(g[w]={}),i=g[w],n?(i[n]||this.setupCall(v,n,q,i[n]=[],p),i[n]):i},k.add=function(s,p,u,q,o){this.get(s,p,u,o).push(q)},k.remove=function(v,p,w){var u,o;if(p){var u=this.get(v,p);if(w){for(var q=u.length-1;q>=0;q--){u[q].orig==w&&u.splice(q,1)}}else{u.length=0}}else{var o=this.get(v);for(var q in o){o[q].length=0}}},k.call=function(x,A,v,p){if(v){if(!v.length){return}var w=[].slice.call(arguments,1),B=[];w.unshift(p=b.event(p||A)),p.type=A,p.currentTarget||(p.currentTarget=x);for(var q=0,z,y=v.length;q<y;q++){if(z=v[q]){z.pkg.apply(x,w),z.one&&B.unshift(q)}}if(B.length){for(var q=0,y=B.length;q<y;q++){this.remove(x,A,v[q].fn)}}}else{v=this.get(x,A),this.call(x,A,v,p)}},k.setupCall=function(){var i=function(q,p,r,o){j.add(q,r,function(s){k.call(q,p,o,s)})};return function(v,z,x,q,w){if(!w){i(v,z,x,q)}else{v=b.dom(w,v);for(var y=0,p=v.length;y<p;y++){i(v[y],z,x,q)}}}}()}(b._util_.eventBase,b.event),void function(l,h){var p=l.queue,k=l.core={},g=h.special={},j=[].push,m=function(q,i){for(var s=0,o=i.length;s<o;s++){if(i.get(s).contains(q)){return i[s]}}};k.build=function(v,q,w,s,o){var i;return s&&(i=b.dom(s,v)),q in g&&g[q].pack&&(w=g[q].pack(w)),function(u){var r=b.dom(u.target),x=[u],n;o&&!u.data&&(u.data=o),u.triggerData&&j.apply(x,u.triggerData);if(!i){return u.result=w.apply(v,x)}for(var y=0;y<2;y++){if(n=m(u.target,i)){return u.result=w.apply(n,x)}i=b.dom(s,v)}}},k.add=function(w,z,i,A,n,y){var x=this.build(w,z,i,A,n),v,q;q=z,z in g&&(v=g[z].attachElements,q=g[z].bindType||z),p.add(w,z,q,{type:z,pkg:x,orig:i,one:y},v)},k.remove=function(s,o,q,n){p.remove(s,o,q,n)}}(b._util_.eventBase,b.event),b.dom.extend({on:function(l,h,m,k,g){var j=b._util_.eventBase.core;return typeof h=="object"&&h?(k=m,m=h,h=null):typeof m=="function"?(k=m,m=null):typeof h=="function"&&(k=h,h=m=null),typeof l=="string"?(l=l.split(/[ ,]+/),this.each(function(){b.forEach(l,function(i){j.add(this,i,k,h,m,g)},this)})):typeof l=="object"&&(k&&(k=null),b.forEach(l,function(n,i){this.on(i,h,m,n,g)},this)),this}}),b.dom.extend({off:function(i,g,j){var h=b._util_.eventBase.core,k=this;if(!i){b.forEach(this,function(l){h.remove(l)})}else{if(typeof i=="string"){if(typeof g=="function"){j=g,g=null}i=i.split(/[ ,]/);b.forEach(this,function(l){b.forEach(i,function(m){h.remove(l,m,j,g)})})}else{if(typeof i=="object"){b.forEach(i,function(l,m){k.off(m,g,l)})}}}return this}}),b.event.un=b.un=function(g,i,h){g=b.dom.g(g);b.dom(g).off(i.replace(/^\s*on/,""),h);return g},b.dom.g=function(g){return g?"string"==typeof g||g instanceof String?document.getElementById(g):!g.nodeName||g.nodeType!=1&&g.nodeType!=9?null:g:null},b.event.on=b.on=function(h,g,i){return typeof h=="string"&&(h=b.dom.g(h)),b.dom(h).on(g.replace(/^\s*on/,""),i),h},b.createChain("fn",function(g){return new b.fn.$Fn(~"function|string".indexOf(b.type(g))?g:function(){})},function(g){this.fn=g}),b.fn.extend({bind:function(h){var g=this.fn,i=arguments.length>1?Array.prototype.slice.call(arguments,1):null;return function(){var k=b.type(g)==="string"?h[g]:g,j=i?i.concat(Array.prototype.slice.call(arguments,0)):arguments;return k.apply(h||k,j)}}}),b.dom.extend({delegate:function(i,g,j,h){return typeof j=="function"&&(h=j,j=null),this.on(g,i,j,h)}}),b.event.preventDefault=function(g){return(new b.event(g)).preventDefault()},b.createChain("string",function(i){var g=b.type(i),j=new String(~"string|number".indexOf(g)?i:g),h=String.prototype;return b.forEach(b.string.$String.prototype,function(l,k){h[k]||(j[k]=l)}),j}),b.string.extend({trim:function(){var g=new RegExp("(^[\\s\\t\\xa0\\u3000]+)|([\\u3000\\xa0\\s\\t]+$)","g");return function(){return this.replace(g,"")}}()}),b.dom.extend({addClass:function(i){if(!arguments.length){return this}var g=typeof i,j=" ";if(g=="string"){i=b.string.trim(i);var h=i.split(" ");b.forEach(this,function(n,l){var k=n.className;for(var m=0;m<h.length;m++){~(j+k+j).indexOf(j+h[m]+j)||(k+=" "+h[m])}n.className=k.replace(/^\s+/g,"")})}else{g=="function"&&b.forEach(this,function(k,l){b.dom(k).addClass(i.call(k,l,k.className))})}return this}}),b.dom.extend({removeClass:function(i){var g=typeof i,j=" ";arguments.length||b.forEach(this,function(k){k.className=""});if(g=="string"){i=b.string.trim(i);var h=i.split(" ");b.forEach(this,function(m){var l=m.className;for(var k=0;k<h.length;k++){while(~(j+l+j).indexOf(j+h[k]+j)){l=(j+l+j).replace(j+h[k]+j,j)}}m.className=b.string.trim(l)})}else{g=="function"&&b.forEach(this,function(k,m,l){b.dom(k).removeClass(i.call(k,m,k.className))})}return this}}),b.dom.createElements=function(){function h(p,l){var q=p.getElementsByTagName("SCRIPT"),o,k,m;for(o=q.length-1;o>=0;o--){m=q[o],k=l.createElement("SCRIPT"),m.id&&(k.id=m.id),m.src&&(k.src=m.src),m.type&&(k.type=m.type),k[m.text?"text":"textContent"]=m.text||m.textContent,m.parentNode.replaceChild(k,m)}}var i=/<(\w+)/i,g=/<|&#?\w+;/,j={area:[1,"<map>","</map>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],legend:[1,"<fieldset>","</fieldset>"],option:[1,"<select multiple='multiple'>","</select>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],_default:[0,"",""]};return j.optgroup=j.option,j.tbody=j.tfoot=j.colgroup=j.caption=j.thead,j.th=j.td,function(q,y){b.isNumber(q)&&(q=q.toString()),y=y||document;var m,x,w,t=q,n=t.length,v=y.createElement("div"),r=y.createDocumentFragment(),k=[];if(b.isString(t)){if(!g.test(t)){k.push(y.createTextNode(t))}else{m=j[t.match(i)[1].toLowerCase()]||j._default,v.innerHTML="<i>mz</i>"+m[1]+t+m[2],v.removeChild(v.firstChild),h(v,y),x=m[0],w=v;while(x--){w=w.firstChild}b.merge(k,w.childNodes),b.forEach(k,function(l){r.appendChild(l)}),v=w=null}}return v=null,k}}();var f=f||window.passport||{},b=f.tangramInst||b||window.baidu;(function(h){var g={"http:":"http://passport.bdimg.com","https:":"https://passport.baidu.com"};h.apiDomain={staticDomain:g[(window.location?window.location.protocol.toLowerCase():document.location.protocol.toLowerCase())]}})(f);var e=null;if(typeof e!="function"){var e=function(){}}e._baiduInstName=e._baiduInstName||"bdInst_"+new Date().getTime();var d=d||b.baiduInstance||window.baiduInstance;window[e._baiduInstName]=window[e._baiduInstName]||d;e.resourcePath="";e.skinName="default";e.version="1.0.0.0";/msie 6/i.test(navigator.userAgent)&&document.execCommand("BackgroundImageCache",false,true);b.form=b.form||{};b.url=b.url||{};b.url.escapeSymbol=b.url.escapeSymbol||function(g){return String(g).replace(/[#%&+=\/\\\ \��\f\r\n\t]/g,function(h){return"%"+(256+h.charCodeAt()).toString(16).substring(1).toUpperCase()})};b.form.json=b.form.json||function(j,l){var h=j.elements,l=l||function(w,i){return w},o={},u,q,v,k,g,t,s,r;function m(i,w){var x=o[i];if(x){x.push||(o[i]=[x]);o[i].push(w)}else{o[i]=w}}for(var n=0,p=h.length;n<p;n++){u=h[n];v=u.name;if(!u.disabled&&v){q=u.type;k=b.url.escapeSymbol(u.value);switch(q){case"radio":case"checkbox":if(!u.checked){break}case"textarea":case"text":case"password":case"hidden":case"file":case"select-one":m(v,l(k,v));break;case"select-multiple":g=u.options;s=g.length;for(t=0;t<s;t++){r=g[t];if(r.selected){m(v,l(r.value,v))}}break}}}return o};e.Base=function(){b.lang.Class.call(this);this._ids={};this._eid=this.guid+"__"};b.lang.inherits(e.Base,b.lang.Class,"magic.Base").extend({getElement:function(g){return document.getElementById(this.$getId(g))},getElements:function(){var g={};var i=this._ids;for(var h in i){g[h]=this.getElement(h)}return g},$getId:function(g){g=b.lang.isString(g)?g:"";return this._ids[g]||(this._ids[g]=this._eid+g)},$mappingDom:function(g,h){if(b.lang.isString(h)){this._ids[g]=h}else{if(h&&h.nodeType){h.id?this._ids[g]=h.id:h.id=this.$getId(g)}}return this},$dispose:function(){this.fire("ondispose")&&b.lang.Class.prototype.dispose.call(this)}});e.control=e.control||{};(function(){e.setup=e.setup||function(n,j,k){var m=i(n,"tang-param")||{};for(var l in k){m[l]=k[l]}var p=new j(m);p.$mappingDom("",n);h(n,p.guid);var o=n.getElementsByTagName("*");for(var l=o.length-1;l>=0;l--){h(o[l],p.guid)}return p};function i(n,j){var p=n.getAttribute(j),o,m=false;if(p&&(o=p.match(g[0]))){m={};for(var l=0,k;l<o.length;l++){k=o[l].match(g[1]);!isNaN(k[2])&&(k[2]=+k[2]);g[2].test(k[2])&&(k[2]=k[2].replace(g[3],"\x242"));g[4].test(k[2])&&(k[2]=g[5].test(k[2]));m[k[1]]=k[2]}}return m}var g=[/\b[\w\$\-]+\s*:\s*[^;]+/g,/([\w\$\-]+)\s*:\s*([^;]+)\s*/,/\'|\"/,/^\s*(\'|\")([^\1]*)\1\s*/,/^(true|false)\s*$/i,/\btrue\b/i];function h(m,j){var l=i(m,"tang-event");if(l){for(var k in l){var n=l[k].substr(1);n.indexOf("(")<0&&(n+="()");b.dom(m).on(k,new Function(e._baiduInstName+"('"+j+"') && "+e._baiduInstName+"('"+j+"')"+n))}}}})();e.passport=b.lang.createClass(function(){},{type:"magic.passport",superClass:e.Base}).extend({});var f=f||window.passport||{};f.realUserTag=f.realUserTag||{};f.realUserTag.data=f.realUserTag.data||{};(function(r){var u=function(){};function o(p){this._requests=[];this._value=null;this._exception=null;this._isComplete=false;var w=this;p(function(x){w._fulfillPromise(x)},function(x){w._breakPromise(x)})}o.prototype={get_isComplete:function(){return this._isComplete},get_value:function(){if(!this._isComplete){return undefined}if(this._exception){throw this._exception}return this._value},call:function(x,z){var w=[];for(var y=0,p=arguments.length-1;y<p;y++){w[y]=arguments[y+1]}return this.when(function(A){return A[x].apply(A,w)})},getValue:function(p){return this.when(function(w){return w[p]})},setValue:function(p,w){this.whenOnly(function(x){x[p]=w})},when:function(w,x,p){return o.when(this,w,x,p)},whenOnly:function(w,x,p){o.whenOnly(this,w,x,p)},success:function(w,p){return this.when(w,u,p)},fail:function(w,p){return this.when(u,w,p)},_enqueueOne:function(p){if(this._isComplete){this._notify(p)}else{this._requests.push(p)}},_notify:function(p){if(this._exception){if(p.breakPromise){p.breakPromise(this._exception)}}else{if(p.fulfillPromise){p.fulfillPromise(this._value)}}},_notifyAll:function(){for(var w=0,p=this._requests.length;w<p;w++){this._notify(this._requests[w])}},_fulfillPromise:function(p){this._value=p;this._exception=null;this._isComplete=true;this._notifyAll()},_breakPromise:function(p){this._value=null;this._exception=p||new Error("An error occured");this._isComplete=true;this._notifyAll()}};o.when=function(y,w,x,p){return new o(function(z,A){o.make(y)._enqueueOne({fulfillPromise:function(B){if(w){z(w.call(p,B))}else{z(B)}},breakPromise:function(B){if(x){try{z(x.call(p,B))}catch(C){A(C)}}else{A(B)}}})})};o.whenOnly=function(y,w,x,p){o.make(y)._enqueueOne({fulfillPromise:function(z){if(w){w.call(p,z)}},breakPromise:function(z){if(x){x.call(p,z)}}})};o.make=function(p){if(p instanceof o){return p}return o.immediate(p)};o.immediate=function(p){return new o(function(w,x){w(p)})};var m={};(function(p){var w=new RegExp("(^[\\s\\t\\xa0\\u3000]+)|([\\u3000\\xa0\\s\\t]+\x24)","g");p.trim=function(x){return String(x).replace(w,"")};p.getUniqueId=function(x){return x+Math.floor(Math.random()*2147483648).toString(36)};p.g=function(x){if(!x){return null}if("string"==typeof x||x instanceof String){return document.getElementById(x)}else{if(x.nodeName&&(x.nodeType==1||x.nodeType==9)){return x}}return null};p.getParent=function(x){x=p.g(x);return x.parentElement||x.parentNode||null};p.encodeHTML=function(x){return String(x).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#39;")};p.array=p.array||{};p.array.indexOf=function(B,y,A){var x=B.length,z=y;A=A|0;if(A<0){A=Math.max(0,x+A)}for(;A<x;A++){if(A in B&&B[A]===y){return A}}return -1};p.array.contains=function(x,y){return(b.array.indexOf(x,y)>=0)};p.browser=p.browser||{};p.browser.ie=/msie (\d+\.\d+)/i.test(navigator.userAgent)?(document.documentMode||+RegExp["\x241"]):undefined;p.browser.opera=/opera(\/| )(\d+(\.\d+)?)(.+?(version\/(\d+(\.\d+)?)))?/i.test(navigator.userAgent)?+(RegExp["\x246"]||RegExp["\x242"]):undefined;p.insertHTML=function(A,x,z){A=p.g(A);var y,B;if(A.insertAdjacentHTML&&!p.browser.opera){A.insertAdjacentHTML(x,z)}else{y=A.ownerDocument.createRange();x=x.toUpperCase();if(x=="AFTERBEGIN"||x=="BEFOREEND"){y.selectNodeContents(A);y.collapse(x=="AFTERBEGIN")}else{B=x=="BEFOREBEGIN";y[B?"setStartBefore":"setEndAfter"](A);y.collapse(B)}y.insertNode(y.createContextualFragment(z))}return A};p.format=function(z,x){z=String(z);var y=Array.prototype.slice.call(arguments,1),A=Object.prototype.toString;if(y.length){y=y.length==1?(x!==null&&(/\[object Array\]|\[object Object\]/.test(A.call(x)))?x:y):y;return z.replace(/#\{(.+?)\}/g,function(B,D){var C=y[D];if("[object Function]"==A.call(C)){C=C(D)}return("undefined"==typeof C?"":C)})}return z};p.on=function(z,x,y){if(z.addEventListener){z.addEventListener(x,y,false)}else{if(z.attachEvent){z.attachEvent("on"+x,y)}else{z["on"+x]=y}}};p.off=function(y,x,z){if(y.removeEventListener){y.removeEventListener(x,func,false)}else{if(y.detachEvent){y.detachEvent("on"+x,func)}else{y["on"+x]=null}}};p.addClass=function(D,C){element=r.base.g(D);var y=C.split(/\s+/),x=element.className,B=" "+x+" ",A=0,z=y.length;for(;A<z;A++){if(B.indexOf(" "+y[A]+" ")<0){x+=(x?" ":"")+y[A]}}element.className=x;return element};p.removeClass=function(D,C){element=r.base.g(D);var A=element.className.split(/\s+/),E=C.split(/\s+/),y,x=E.length,z,B=0;for(;B<x;++B){for(z=0,y=A.length;z<y;++z){if(A[z]==E[B]){A.splice(z,1);break}}}element.className=A.join(" ");return element};p.getViewHeight=function(){var y=document,x=p.browser.ie||1,z=y.compatMode==="BackCompat"&&x<9?y.body:y.documentElement;return z.clientHeight};p.getViewWidth=function(){var x=document,y=x.compatMode=="BackCompat"?x.body:x.documentElement;return y.clientWidth}})(m);r.base=m;var h={};(function(p){var w="__bdpp_pstc__"+new Date().getTime(),E=w+"_form",x=w+"_ifr";var G=function(K){if(typeof(K)=="object"){var H=[];for(var L in K){var J=K[L];if(J!==undefined&&J!==null){if(H.length){H.push("&")}var I=encodeURIComponent(typeof(J)=="boolean"?(J?"1":"0"):J.toString());H.push(encodeURIComponent(L),"=",I)}}return H.join("")}if(typeof(K)=="string"){return K}return null};var C=function(H,J){J=G(J);if(typeof(J)=="string"){var I=(/\?/g).test(H);H+=(I?"&":"?")+G(J)}return H};var F=function(I,H,J){I.setAttribute("type","text/javascript");J&&I.setAttribute("charset",J);I.setAttribute("src",H);document.getElementsByTagName("head")[0].appendChild(I)};var y=function(I){if(I.clearAttributes){I.clearAttributes()}else{for(var H in I){if(I.hasOwnProperty(H)){delete I[H]}}}if(I&&I.parentNode){I.parentNode.removeChild(I)}I=null};var A=function(H,T,U){var P=document.createElement("SCRIPT"),O="bd__cbs__",R,L,V=U||{},K=V.charset,M=V.queryField||"callback",S=V.timeOut||0,I,J=new RegExp("(\\?|&)"+M+"=([^&]*)"),N;R=m.getUniqueId(O);window[R]=Q(0);if(S){I=setTimeout(Q(1),S)}H=H.replace(J,"\x241"+M+"="+R);if(H.search(J)<0){H+=(H.indexOf("?")<0?"?":"&")+M+"="+R}F(P,H,K);function Q(W){return function(){try{if(W){V.onfailure&&V.onfailure()}else{T.apply(window,arguments);clearTimeout(I)}window[R]=null;delete window[R]}catch(X){}finally{y(P)}}}};var D=function(K,J){var H=[];H.push("<form id='",E,"' target='",x,"' ");H.push("action='",m.encodeHTML(K),"' method='post'>");for(var M in J){if(J.hasOwnProperty(M)){var L=J[M];if(L!==undefined&&L!==null){var I=m.encodeHTML(typeof(L)=="boolean"?(L?"1":"0"):L);H.push("<input type='hidden' name='",m.encodeHTML(M),"' value='",I,"' />")}}}H.push("</form>");return H.join("")};var B=function(H,L,P,Q){Q=Q||{};var O=Q.timeOut||0,I=false,N=m.getUniqueId("bd__pcbs__");L[Q.queryField||"callback"]="parent."+N;var J=D(H,L);if(m.g(E)){m.getParent(E).innerHTML=J}else{var K=[];K.push("<div id='",w,"' style='display:none;'>");K.push("<div>",J,"</div>");K.push("<iframe name='",x,"' src='"+(window.location.protocol.toLowerCase()=="https:"?"https://passport.baidu.com/passApi/html/_blank.html":"about:blank")+"' style='display:none;'></iframe>");K.push("</div>");m.insertHTML(document.body,"beforeEnd",K.join(""))}window[N]=M();if(O){I=setTimeout(M(1),O)}function M(R){return function(){try{if(R){Q.onfailure&&Q.onfailure()}else{P.apply(window,arguments);I&&clearTimeout(I)}window[N]=null;delete window[N]}catch(S){}}}m.g(E).submit()};p.jsonp=function(J,K,I){I=I||{};var H=J;return new o(function(M,L){J=C(J,K);A(J,function(N){if(I.processData){N=I.processData(N)}M&&M(N)},{charset:I.charset,queryField:I.queryField,timeOut:I.timeOut,onfailure:function(){L&&L()}})})};p.submit=function(I,J,H){if(I&&J){return new o(function(L,K){B(I,J,function(M){if(H.processData){M=H.processData(M)}L&&L(M)},H)})}};var z=[];p.load=function(H){return new o(function(L,K){var J=z.push(new Image)-1,I=false,M=setTimeout(function(){I=true;L&&L()},1000);z[J].onload=function(){clearTimeout(M);if(!I){L&&L()}I=true;z[J]=z[J].onload=null};z[J].src=H})}})(h);r.setContext=function(p){j.product=p.product||j.product;j.charset=p.charset||j.charset;j.staticPage=p.staticPage||j.staticPage;j.token=p.token||j.token};function s(x,p,w){if(p){if(!w){return function(y){return h.jsonp(v+p,k(y,x,_paramNameMapping[x],_paramValueMapping[x],false),{charset:"utf-8",processData:function(z){return q(x,z)}})}}else{return function(y){y=y||{};return h.submit(v+p,k(y,x,_paramNameMapping[x],_paramValueMapping[x],true),{charset:"utf-8",processData:function(z){if(z){for(var B in z){if(z.hasOwnProperty(B)){var A=z[B];if(A){z[B]=decodeURIComponent(A)}}}}return q(x,z)}})}}}else{return u}}function k(z,D,A,B,C){var G=(C?{staticpage:j.staticPage,charset:j.charset||document.characterSet||document.charset||""}:{}),x=_paramDefaultValue[D];if(x){for(var w in x){if(x.hasOwnProperty(w)){var F=x[w];G[w]=(typeof(F)=="function"?F(z):F)}if(w=="verifypass"){G[w]=decodeURIComponent(G[w])}}}G.token=j.token;G.tpl=j.product;G.apiver="v3";G.tt=new Date().getTime();if(z){A=A||{};B=B||{};for(var w in z){if(z.hasOwnProperty(w)){var E=B[w],y=(!!E?E(z[w],z):z[w]);if(typeof(y)=="string"){if(C){y=decodeURIComponent(y)}if(!_paramSpaceIgnoreList[w]){y=m.trim(y)}}G[A[w]||w.toLowerCase()]=y}}}return G}function q(z,w){if(w){var A=_resultProcessFunc[z];if(A){A(w)}var x=w.errInfo,y=w,p=y;if(!x){x={no:w.err_no,msg:w.err_msg||""};delete y.err_no;delete y.err_msg;p={data:y,errInfo:l(z,x,y)}}else{y.errInfo=l(z,x,y)}return p}return w}function l(A,x,z){var w=_errMsg[_errInfoFieldMapping[A]||A];if(w&&x&&(x.no!=0)){var y=w[x.no]||w["-1"];if(y){var B=y.msg;if(B&&(B.indexOf("#{")>=0)){if(A=="login"&&(x.no==110024)){var p=v+"/v2/?regnotify&needresend=true&tpl="+encodeURIComponent(j.product)+"&user="+encodeURIComponent(z.mail)+"&u="+encodeURIComponent(z.u);B=m.format(B,{gotourl:p})}else{B=m.format(B,z||{})}}x.msg=B;x.field=y.field}}return x}var t={},g={},j={},v="https://passport.baidu.com";for(var i in t){if(t.hasOwnProperty(i)){r[i]=s(i,t[i])}}for(var i in g){if(g.hasOwnProperty(i)){r[i]=s(i,g[i],true)}}function n(w){if(w){var y=w.errInfo,z=w;if(!y){for(var A in w){if(w.hasOwnProperty(A)){var x=w[A];if(x){w[A]=decodeURIComponent(x)}}}}if(!y){y={no:w.err_no,msg:w.err_msg||""};delete z.err_no;delete z.err_msg;w={data:z,errInfo:y}}}return w}r.jsonp=function(p,w){if(p.indexOf("http")!=0){p=v+p}w=w||{};w.apiver="v3";w.tt=new Date().getTime();return h.jsonp(p,w,{charset:"utf-8",processData:function(x){return n(x)}})};r.request=h})(f.realUserTag.data);e.passport.realUserTag=b.lang.createClass(function(h){var i=this;function g(){if(j&&j.guid){}else{if(j){j.guid="$BAIDU$"}else{var j={};j.guid="$BAIDU$"}}window[j.guid]=window[j.guid]||{};window[j.guid]._counter=window[j.guid]._counter||"1";return"TANGRAM__"+window[j.guid]._counter++}i.config={product:"",charset:"",staticPage:"",u:"",height:"314",width:"455",lang:"zh-CN",title:"�ٶ��ʺ���Ϣ"};b.extend(i.config,h);this.module="qrcoe";i.usermsg={};i.url={REQUEST:"https://passport.baidu.com/v2/api/checkfacticity",ADDCOOKIE:"https://passport.baidu.com/v2/?ucentersetcookie",BIND:"http://passport.baidu.com/v2/accountsecurity",FEEDBACK:"http://passport.baidu.com/v2/?ucenterfeedback&tpl="+i.config.product+"#login"};i.constant={CONTAINER_CLASS:"tang-pass-realusertag",FOCUS_CLASS:"pass-input-focus",HOVER_CLASS:"pass-input-hover",ERROR_CLASS:"pass-input-error",HOVER_CLASS_SUBMIT:"pass-button-submit-hover",PRESS_CLASS_SUBMIT:"pass-button-submit-press"};i.lang={"zh-CN":{nextStep:"\u4E0B\u4E00\u6B65",firstStepText:h.firstStepText||"\u4E00\u626B\u5373\u4E0A\uFF0C\u83B7\u53D6\u4E8C\u7EF4\u7801\u626B\u63CF\u767B\u5F55\uFF0C\u4E3A\u786E\u4FDD\u662F\u60A8\u672C\u4EBA\u64CD\u4F5C\uFF0C\u8BF7\u8F93\u5165\u5BC6\u7801:",secondStepText:h.secondStepText||"\u4E00\u626B\u5373\u4E0A\uFF0C\u626B\u63CF\u4E8C\u7EF4\u7801\u626B\u63CF\u5373\u53EF\u767B\u5F55"}}[i.config.lang];i._ids=g();i._initApi()},{type:"magic.passport.realUserTag",superClass:e.passport}).extend({_loadCss:function(h){var g=document.createElement("link");g.rel="stylesheet";g.type="text/css";g.href=h;g.disabled=false;document.getElementsByTagName("head")[0].appendChild(g)},_checkuser:function(k,h){var i=this,j=f.realUserTag.data.request.jsonp,g=i.url.REQUEST;if(h=="close"){j(g,{act:"close"},{processData:function(){}});k()}else{j(g,{},{processData:function(l){if(l.errno!="110000"){return true}if((typeof l).toLowerCase()=="object"&&l.username&&!l.facticity_hide_notice&&!l.facticity){i.usermsg.facticity=false;i.usermsg.username=l.username;i.usermsg.msg="<p>С����Ƕ����ֻ�/���������ٲ������OUT�ˣ�</p>";k()}else{if((typeof l).toLowerCase()=="object"&&!l.facticity_hide_notice&&l.display){i.usermsg.facticity=true;i.usermsg.username=l.username;i.usermsg.msg="<p>ʹ���ֻ�/�����¼����ʱ��������ʺ���Ϣ��ȷ����ȫ</p><p>�����ܱ��ֻ���<span>"+(l.mobile||"��û�а��ܱ�����")+"</span></p><p>�����ܱ����䣺<span>"+(l.email||"��û�а��ܱ��ֻ�")+"</span></p>";k()}else{return true}}}})}},_getTemplate:function(m){var i=f.realUserTag.data.base,l=this._ids,h=this.config,k=this.usermsg,g=this.url,j={wrapper:"<div id="+l+'__wrapper class="realusertag-wrapper" style="width:'+h.width+"px;height:"+h.height+'px"><div id='+l+'__content class="realusertag-content"><div id='+l+'__top class="realusertag-top"><h3 class="top-title">'+h.title+"</h3><a id="+l+'__top_close class="top-close"></a></div><div id='+l+'__article class="realusertag-article"><div class="article-msg"><p class="article-msg-title">�װ���'+k.username+'��</p><div class="article-msg-content">'+k.msg+"</div></div><div id="+l+'__bindbutton class="article-bindbutton '+(k.facticity?"real":"unreal")+'"><div class="bindbutton-wrapper"><a href="'+g.BIND+'" target="_blank" class="bindbutton-a" id="'+l+(k.facticity?"__realbtn":"__unrealbtn")+'">'+(k.facticity?"�´������ֻ�/�����¼":"���ٰ�")+"</a></div></div><div id="+l+'__result class="article-result"><div id='+l+'__result_title class="result-title"></div><div id='+l+'__result_msg class="result-msg"></div></div></div><div id='+l+'__footer class="realusertag-footer"><p class="footer-left">��л����֧��!</p><a class="footer-right" href="'+g.FEEDBACK+'" target="_blank">���ⷴ��</a></div></div></div>'};return j[m]},_initApi:function(){var h=this,g=f.realUserTag.data;h._checkuser(function(){h._loadCss("https://passport.baidu.com/passApi/css/uni_realusertag_1974da38.css");document.body.appendChild(b(h._getTemplate("wrapper")).get(0));h.addEvent()})},addEvent:function(){var j=this,g=f.realUserTag.data.base,i=this.getElement("top_close"),h=this.getElement("realbtn"),k=this.getElement("wrapper");g.on(i,"click",function(){j._checkuser(function(){k.style.display="none"},"close")});if(h){g.on(h,"click",function(l){if(l&&l.preventDefault){l.preventDefault()}else{window.event.returnValue=false}var m=f.realUserTag.data.request.jsonp;m(j.url.ADDCOOKIE,{},{processData:function(){h.innerHTML="���óɹ�!"}});setTimeout(function(){j.hide()},2000);h.innerHTML="�������ã����Ժ�"})}if(g.browser.ie<7){window.onScroll=function(){j.getElement("wrapper").style.display="none";if(document.body.scrollTop){j.getElement("wrapper").style.top=document.body.scrollTop+document.body.clientHeight-j.config.height-4+"px"}j.getElement("wrapper").style.display=""}}},hide:function(){this.getElement("wrapper").style.display="none"},getElement:function(g){return document.getElementById(this._ids+"__"+g)}});return e});