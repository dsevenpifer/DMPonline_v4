!function(a,b){"use strict";function c(a,b){for(var c,d=[],f=0;f<a.length;++f){if(c=g[a[f]]||e(a[f]),!c)throw"module definition dependecy not found: "+a[f];d.push(c)}b.apply(null,d)}function d(a,d,e){if("string"!=typeof a)throw"invalid module definition, module id must be defined and be a string";if(d===b)throw"invalid module definition, dependencies must be specified";if(e===b)throw"invalid module definition, definition function must be specified";c(d,function(){g[a]=e.apply(null,arguments)})}function e(b){for(var c=a,d=b.split(/[.\/]/),e=0;e<d.length;++e){if(!c[d[e]])return;c=c[d[e]]}return c}function f(c){for(var d=0;d<c.length;d++){for(var e=a,f=c[d],h=f.split(/[.\/]/),i=0;i<h.length-1;++i)e[h[i]]===b&&(e[h[i]]={}),e=e[h[i]];e[h[h.length-1]]=g[f]}}var g={};d("tinymce/pasteplugin/Utils",["tinymce/util/Tools","tinymce/html/DomParser","tinymce/html/Schema"],function(a,b,c){function d(b,c){return a.each(c,function(a){b=a.constructor==RegExp?b.replace(a,""):b.replace(a[0],a[1])}),b}function e(e){function f(a){var b=a.name,c=a;if("br"===b)return void(i+="\n");if(j[b]&&(i+=" "),k[b])return void(i+=" ");if(3==a.type&&(i+=a.value),!a.shortEnded&&(a=a.firstChild))do f(a);while(a=a.next);l[b]&&c.next&&(i+="\n","p"==b&&(i+="\n"))}var g=new c,h=new b({},g),i="",j=g.getShortEndedElements(),k=a.makeMap("script noscript style textarea video audio iframe object"," "),l=g.getBlockElements();return e=d(e,[/<!\[[^\]]+\]>/g]),f(h.parse(e)),i}function f(a){function b(a,b,c){return b||c?"\xa0":" "}return a=d(a,[/^[\s\S]*<body[^>]*>\s*|\s*<\/body[^>]*>[\s\S]*$/g,/<!--StartFragment-->|<!--EndFragment-->/g,[/( ?)<span class="Apple-converted-space">\u00a0<\/span>( ?)/g,b],/<br>$/i])}return{filter:d,innerText:e,trimHtml:f}}),d("tinymce/pasteplugin/Clipboard",["tinymce/Env","tinymce/dom/RangeUtils","tinymce/util/VK","tinymce/pasteplugin/Utils"],function(a,b,c,d){return function(e){function f(a){var b,c=e.dom;if(b=e.fire("BeforePastePreProcess",{content:a}),b=e.fire("PastePreProcess",b),a=b.content,!b.isDefaultPrevented()){if(e.hasEventListeners("PastePostProcess")&&!b.isDefaultPrevented()){var d=c.add(e.getBody(),"div",{style:"display:none"},a);b=e.fire("PastePostProcess",{node:d}),c.remove(d),a=b.node.innerHTML}b.isDefaultPrevented()||e.insertContent(a,{merge:e.settings.paste_merge_formats!==!1,data:{paste:!0}})}}function g(a){a=e.dom.encode(a).replace(/\r\n/g,"\n");var b,c=e.dom.getParent(e.selection.getStart(),e.dom.isBlock),g=e.settings.forced_root_block;g&&(b=e.dom.createHTML(g,e.settings.forced_root_block_attrs),b=b.substr(0,b.length-3)+">"),c&&/^(PRE|DIV)$/.test(c.nodeName)||!g?a=d.filter(a,[[/\n/g,"<br>"]]):(a=d.filter(a,[[/\n\n/g,"</p>"+b],[/^(.*<\/p>)(<p>)$/,b+"$1"],[/\n/g,"<br />"]]),-1!=a.indexOf("<p>")&&(a=b+a)),f(a)}function h(){function b(a){var b,c,e,f=a.startContainer;if(b=a.getClientRects(),b.length)return b[0];if(a.collapsed&&1==f.nodeType){for(e=f.childNodes[t.startOffset];e&&3==e.nodeType&&!e.data.length;)e=e.nextSibling;if(e)return"BR"==e.tagName&&(c=d.doc.createTextNode("\ufeff"),e.parentNode.insertBefore(c,e),a=d.createRng(),a.setStartBefore(c),a.setEndAfter(c),b=a.getClientRects(),d.remove(c)),b.length?b[0]:void 0}}var c,d=e.dom,f=e.getBody(),g=e.dom.getViewPort(e.getWin()),h=g.y,i=20;if(t=e.selection.getRng(),e.inline&&(c=e.selection.getScrollContainer(),c&&c.scrollTop>0&&(h=c.scrollTop)),t.getClientRects){var j=b(t);if(j)i=h+(j.top-d.getPos(f).y);else{i=h;var k=t.startContainer;k&&(3==k.nodeType&&k.parentNode!=f&&(k=k.parentNode),1==k.nodeType&&(i=d.getPos(k,c||f).y))}}s=d.add(e.getBody(),"div",{id:"mcepastebin",contentEditable:!0,"data-mce-bogus":"all",style:"position: absolute; top: "+i+"px;width: 10px; height: 10px; overflow: hidden; opacity: 0"},y),(a.ie||a.gecko)&&d.setStyle(s,"left","rtl"==d.getStyle(f,"direction",!0)?65535:-65535),d.bind(s,"beforedeactivate focusin focusout",function(a){a.stopPropagation()}),s.focus(),e.selection.select(s,!0)}function i(){if(s){for(var a;a=e.dom.get("mcepastebin");)e.dom.remove(a),e.dom.unbind(a);t&&e.selection.setRng(t)}s=t=null}function j(){var a,b,c,d,f="";for(a=e.dom.select("div[id=mcepastebin]"),b=0;b<a.length;b++)c=a[b],c.firstChild&&"mcepastebin"==c.firstChild.id&&(c=c.firstChild),d=c.innerHTML,f!=y&&(f+=d);return f}function k(a){var b={};if(a){if(a.getData){var c=a.getData("Text");c&&c.length>0&&-1==c.indexOf(z)&&(b["text/plain"]=c)}if(a.types)for(var d=0;d<a.types.length;d++){var e=a.types[d];b[e]=a.getData(e)}}return b}function l(a){return k(a.clipboardData||e.getDoc().dataTransfer)}function m(a,b){function c(c){function d(a){b&&(e.selection.setRng(b),b=null),f('<img src="'+a.result+'">')}var g,h,i,j=!1;if(c)for(g=0;g<c.length;g++)h=c[g],/^image\/(jpeg|png|gif|bmp)$/.test(h.type)&&(i=new FileReader,i.onload=d.bind(null,i),i.readAsDataURL(h.getAsFile?h.getAsFile():h),a.preventDefault(),j=!0);return j}var d=a.clipboardData||a.dataTransfer;return e.settings.paste_data_images&&d?c(d.items)||c(d.files):void 0}function n(a){var b=a.clipboardData;return-1!=navigator.userAgent.indexOf("Android")&&b&&b.items&&0===b.items.length}function o(a){return b.getCaretRangeFromPoint(a.clientX,a.clientY,e.getDoc())}function p(a,b){return b in a&&a[b].length>0}function q(a){return c.metaKeyPressed(a)&&86==a.keyCode||a.shiftKey&&45==a.keyCode}function r(){e.on("keydown",function(b){function c(a){q(a)&&!a.isDefaultPrevented()&&i()}if(q(b)&&!b.isDefaultPrevented()){if(u=b.shiftKey&&86==b.keyCode,u&&a.webkit&&-1!=navigator.userAgent.indexOf("Version/"))return;if(b.stopImmediatePropagation(),w=(new Date).getTime(),a.ie&&u)return b.preventDefault(),void e.fire("paste",{ieFake:!0});i(),h(),e.once("keyup",c),e.once("paste",function(){e.off("keyup",c)})}}),e.on("paste",function(b){var c=(new Date).getTime(),k=l(b),o=(new Date).getTime()-c,q=(new Date).getTime()-w-o<1e3,r="text"==v.pasteFormat||u;return u=!1,b.isDefaultPrevented()||n(b)?void i():m(b)?void i():(q||b.preventDefault(),!a.ie||q&&!b.ieFake||(h(),e.dom.bind(s,"paste",function(a){a.stopPropagation()}),e.getDoc().execCommand("Paste",!1,null),k["text/html"]=j()),void setTimeout(function(){var a;return p(k,"text/html")?a=k["text/html"]:(a=j(),a==y&&(r=!0)),a=d.trimHtml(a),s&&s.firstChild&&"mcepastebin"===s.firstChild.id&&(r=!0),i(),a.length||(r=!0),r&&(a=p(k,"text/plain")&&-1==a.indexOf("</p>")?k["text/plain"]:d.innerText(a)),a==y?void(q||e.windowManager.alert("Please use Ctrl+V/Cmd+V keyboard shortcuts to paste contents.")):void(r?g(a):f(a))},0))}),e.on("dragstart dragend",function(a){x="dragstart"==a.type}),e.on("drop",function(a){var b=o(a);if(!a.isDefaultPrevented()&&!x&&!m(a,b)&&b&&e.settings.paste_filter_drop!==!1){var c=k(a.dataTransfer),h=c["mce-internal"]||c["text/html"]||c["text/plain"];h&&(a.preventDefault(),e.undoManager.transact(function(){c["mce-internal"]&&e.execCommand("Delete"),e.selection.setRng(b),h=d.trimHtml(h),c["text/html"]?f(h):g(h)}))}}),e.on("dragover dragend",function(a){e.settings.paste_data_images&&a.preventDefault()})}var s,t,u,v=this,w=0,x=!1,y="%MCEPASTEBIN%",z="data:text/mce-internal,";v.pasteHtml=f,v.pasteText=g,e.on("preInit",function(){r(),e.parser.addNodeFilter("img",function(b,c,d){function f(a){return a.data&&a.data.paste===!0}function g(b){b.attr("data-mce-object")||k===a.transparentSrc||b.remove()}function h(a){return 0===a.indexOf("webkit-fake-url")}function i(a){return 0===a.indexOf("data:")}if(!e.settings.paste_data_images&&f(d))for(var j=b.length;j--;){var k=b[j].attributes.map.src;k&&(h(k)?g(b[j]):!e.settings.allow_html_data_urls&&i(k)&&g(b[j]))}})})}}),d("tinymce/pasteplugin/WordFilter",["tinymce/util/Tools","tinymce/html/DomParser","tinymce/html/Schema","tinymce/html/Serializer","tinymce/html/Node","tinymce/pasteplugin/Utils"],function(a,b,c,d,e,f){function g(a){return/<font face="Times New Roman"|class="?Mso|style="[^"]*\bmso-|style='[^'']*\bmso-|w:WordDocument/i.test(a)||/class="OutlineElement/.test(a)||/id="?docs\-internal\-guid\-/.test(a)}function h(b){var c,d;return d=[/^[IVXLMCD]{1,2}\.[ \u00a0]/,/^[ivxlmcd]{1,2}\.[ \u00a0]/,/^[a-z]{1,2}[\.\)][ \u00a0]/,/^[A-Z]{1,2}[\.\)][ \u00a0]/,/^[0-9]+\.[ \u00a0]/,/^[\u3007\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]+\.[ \u00a0]/,/^[\u58f1\u5f10\u53c2\u56db\u4f0d\u516d\u4e03\u516b\u4e5d\u62fe]+\.[ \u00a0]/],b=b.replace(/^[\u00a0 ]+/,""),a.each(d,function(a){return a.test(b)?(c=!0,!1):void 0}),c}function i(a){return/^[\s\u00a0]*[\u2022\u00b7\u00a7\u25CF]\s*/.test(a)}function j(j){var k=j.settings;j.on("BeforePastePreProcess",function(l){function m(a){function b(a){var c="";if(3===a.type)return a.value;if(a=a.firstChild)do c+=b(a);while(a=a.next);return c}function c(a,b){if(3===a.type&&b.test(a.value))return a.value=a.value.replace(b,""),!1;if(a=a.firstChild)do if(!c(a,b))return!1;while(a=a.next);return!0}function d(a){if(a._listIgnore)return void a.remove();if(a=a.firstChild)do d(a);while(a=a.next)}function f(a,b,f){var h=a._listLevel||k;h!=k&&(k>h?g&&(g=g.parent.parent):(j=g,g=null)),g&&g.name==b?g.append(a):(j=j||g,g=new e(b,1),f>1&&g.attr("start",""+f),a.wrap(g)),a.name="li",h>k&&j&&j.lastChild.append(g),k=h,d(a),c(a,/^\u00a0+/),c(a,/^\s*([\u2022\u00b7\u00a7\u25CF]|\w+\.)/),c(a,/^\u00a0+/)}for(var g,j,k=1,l=[],m=a.firstChild;"undefined"!=typeof m&&null!==m;)if(l.push(m),m=m.walk(),null!==m)for(;"undefined"!=typeof m&&m.parent!==a;)m=m.walk();for(var n=0;n<l.length;n++)if(a=l[n],"p"==a.name&&a.firstChild){var o=b(a);if(i(o)){f(a,"ul");continue}if(h(o)){var p=/([0-9]+)\./.exec(o),q=1;p&&(q=parseInt(p[1],10)),f(a,"ol",q);continue}if(a._listLevel){f(a,"ul",1);continue}g=null}else j=g,g=null}function n(b,c){var d,f={},g=j.dom.parseStyle(c);return a.each(g,function(a,e){switch(e){case"mso-list":d=/\w+ \w+([0-9]+)/i.exec(c),d&&(b._listLevel=parseInt(d[1],10)),/Ignore/i.test(a)&&b.firstChild&&(b._listIgnore=!0,b.firstChild._listIgnore=!0);break;case"horiz-align":e="text-align";break;case"vert-align":e="vertical-align";break;case"font-color":case"mso-foreground":e="color";break;case"mso-background":case"mso-highlight":e="background";break;case"font-weight":case"font-style":return void("normal"!=a&&(f[e]=a));case"mso-element":if(/^(comment|comment-list)$/i.test(a))return void b.remove()}return 0===e.indexOf("mso-comment")?void b.remove():void(0!==e.indexOf("mso-")&&("all"==o||p&&p[e])&&(f[e]=a))}),/(bold)/i.test(f["font-weight"])&&(delete f["font-weight"],b.wrap(new e("b",1))),/(italic)/i.test(f["font-style"])&&(delete f["font-style"],b.wrap(new e("i",1))),f=j.dom.serializeStyle(f,b.name),f?f:null}var o,p,q=l.content;if(q=q.replace(/<b[^>]+id="?docs-internal-[^>]*>/gi,""),q=q.replace(/<br class="?Apple-interchange-newline"?>/gi,""),o=k.paste_retain_style_properties,o&&(p=a.makeMap(o.split(/[, ]/))),k.paste_enable_default_filters!==!1&&g(l.content)){l.wordContent=!0,q=f.filter(q,[/<!--[\s\S]+?-->/gi,/<(!|script[^>]*>.*?<\/script(?=[>\s])|\/?(\?xml(:\w+)?|img|meta|link|style|\w:\w+)(?=[\s\/>]))[^>]*>/gi,[/<(\/?)s>/gi,"<$1strike>"],[/&nbsp;/gi,"\xa0"],[/<span\s+style\s*=\s*"\s*mso-spacerun\s*:\s*yes\s*;?\s*"\s*>([\s\u00a0]*)<\/span>/gi,function(a,b){return b.length>0?b.replace(/./," ").slice(Math.floor(b.length/2)).split("").join("\xa0"):""}]]);var r=k.paste_word_valid_elements;r||(r="-strong/b,-em/i,-u,-span,-p,-ol,-ul,-li,-h1,-h2,-h3,-h4,-h5,-h6,-p/div,-a[href|name],sub,sup,strike,br,del,table[width],tr,td[colspan|rowspan|width],th[colspan|rowspan|width],thead,tfoot,tbody");var s=new c({valid_elements:r,valid_children:"-li[p]"});a.each(s.elements,function(a){a.attributes["class"]||(a.attributes["class"]={},a.attributesOrder.push("class")),a.attributes.style||(a.attributes.style={},a.attributesOrder.push("style"))});var t=new b({},s);t.addAttributeFilter("style",function(a){for(var b,c=a.length;c--;)b=a[c],b.attr("style",n(b,b.attr("style"))),"span"==b.name&&b.parent&&!b.attributes.length&&b.unwrap()}),t.addAttributeFilter("class",function(a){for(var b,c,d=a.length;d--;)b=a[d],c=b.attr("class"),/^(MsoCommentReference|MsoCommentText|msoDel)$/i.test(c)&&b.remove(),b.attr("class",null)}),t.addNodeFilter("del",function(a){for(var b=a.length;b--;)a[b].remove()}),t.addNodeFilter("a",function(a){for(var b,c,d,e=a.length;e--;)if(b=a[e],c=b.attr("href"),d=b.attr("name"),c&&-1!=c.indexOf("#_msocom_"))b.remove();else if(c&&0===c.indexOf("file://")&&(c=c.split("#")[1],c&&(c="#"+c)),c||d){if(d&&!/^_?(?:toc|edn|ftn)/i.test(d)){b.unwrap();continue}b.attr({href:c,name:d})}else b.unwrap()});var u=t.parse(q);k.paste_convert_word_fake_lists!==!1&&m(u),l.content=new d({},s).serialize(u)}})}return j.isWordContent=g,j}),d("tinymce/pasteplugin/Quirks",["tinymce/Env","tinymce/util/Tools","tinymce/pasteplugin/WordFilter","tinymce/pasteplugin/Utils"],function(a,b,c,d){return function(e){function f(a){e.on("BeforePastePreProcess",function(b){b.content=a(b.content)})}function g(a){if(!c.isWordContent(a))return a;var f=[];b.each(e.schema.getBlockElements(),function(a,b){f.push(b)});var g=new RegExp("(?:<br>&nbsp;[\\s\\r\\n]+|<br>)*(<\\/?("+f.join("|")+")[^>]*>)(?:<br>&nbsp;[\\s\\r\\n]+|<br>)*","g");return a=d.filter(a,[[g,"$1"]]),a=d.filter(a,[[/<br><br>/g,"<BR><BR>"],[/<br>/g," "],[/<BR><BR>/g,"<br>"]])}function h(a){if(c.isWordContent(a))return a;var b=e.settings.paste_webkit_styles;if(e.settings.paste_remove_styles_if_webkit===!1||"all"==b)return a;if(b&&(b=b.split(/[, ]/)),b){var d=e.dom,f=e.selection.getNode();a=a.replace(/(<[^>]+) style="([^"]*)"([^>]*>)/gi,function(a,c,e,g){var h=d.parseStyle(e,"span"),i={};if("none"===b)return c+g;for(var j=0;j<b.length;j++){var k=h[b[j]],l=d.getStyle(f,b[j],!0);/color/.test(b[j])&&(k=d.toHex(k),l=d.toHex(l)),l!=k&&(i[b[j]]=k)}return i=d.serializeStyle(i,"span"),i?c+' style="'+i+'"'+g:c+g})}else a=a.replace(/(<[^>]+) style="([^"]*)"([^>]*>)/gi,"$1$3");return a=a.replace(/(<[^>]+) data-mce-style="([^"]+)"([^>]*>)/gi,function(a,b,c,d){return b+' style="'+c+'"'+d})}a.webkit&&f(h),a.ie&&f(g)}}),d("tinymce/pasteplugin/Plugin",["tinymce/PluginManager","tinymce/pasteplugin/Clipboard","tinymce/pasteplugin/WordFilter","tinymce/pasteplugin/Quirks"],function(a,b,c,d){var e;a.add("paste",function(a){function f(){"text"==g.pasteFormat?(this.active(!1),g.pasteFormat="html"):(g.pasteFormat="text",this.active(!0),e||(a.windowManager.alert("Paste is now in plain text mode. Contents will now be pasted as plain text until you toggle this option off."),e=!0))}var g,h=this,i=a.settings;h.clipboard=g=new b(a),h.quirks=new d(a),h.wordFilter=new c(a),a.settings.paste_as_text&&(h.clipboard.pasteFormat="text"),i.paste_preprocess&&a.on("PastePreProcess",function(a){i.paste_preprocess.call(h,h,a)}),i.paste_postprocess&&a.on("PastePostProcess",function(a){i.paste_postprocess.call(h,h,a)}),a.addCommand("mceInsertClipboardContent",function(a,b){b.content&&h.clipboard.pasteHtml(b.content),b.text&&h.clipboard.pasteText(b.text)}),a.paste_block_drop&&a.on("dragend dragover draggesture dragdrop drop drag",function(a){a.preventDefault(),a.stopPropagation()}),a.settings.paste_data_images||a.on("drop",function(a){var b=a.dataTransfer;b&&b.files&&b.files.length>0&&a.preventDefault()}),a.addButton("pastetext",{icon:"pastetext",tooltip:"Paste as text",onclick:f,active:"text"==h.clipboard.pasteFormat}),a.addMenuItem("pastetext",{text:"Paste as text",selectable:!0,active:g.pasteFormat,onclick:f})})}),f(["tinymce/pasteplugin/Utils"])}(this);