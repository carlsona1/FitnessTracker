(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["about"],{"02b1":function(t,e,s){"use strict";var a=s("7f46"),i=s.n(a);i.a},"09e0":function(t,e,s){},"2b56":function(t,e,s){"use strict";var a=s("09e0"),i=s.n(a);i.a},5899:function(t,e){t.exports="\t\n\v\f\r                　\u2028\u2029\ufeff"},"58a8":function(t,e,s){var a=s("1d80"),i=s("5899"),n="["+i+"]",r=RegExp("^"+n+n+"*"),c=RegExp(n+n+"*$"),o=function(t){return function(e){var s=String(a(e));return 1&t&&(s=s.replace(r,"")),2&t&&(s=s.replace(c,"")),s}};t.exports={start:o(1),end:o(2),trim:o(3)}},7156:function(t,e,s){var a=s("861d"),i=s("d2bb");t.exports=function(t,e,s){var n,r;return i&&"function"==typeof(n=e.constructor)&&n!==s&&a(r=n.prototype)&&r!==s.prototype&&i(t,r),t}},7277:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"page"},[s("div",{staticClass:"columns"},[s("div",{staticClass:"column is-one-quarter"},[s("div",{staticClass:"container mb-3",staticStyle:{"margin-left":"-75px","margin-top":"75px"}},[s("Userpanel")],1),s("div",{staticStyle:{"margin-left":"-100px"}},[s("Calendar")],1)]),s("div",{staticClass:"column is-one-half",staticStyle:{"margin-left":"25px"}},t._l(t.posts,(function(t,e){return s("Post",{key:e,attrs:{i:e,post:t}})})),1),s("div",{staticClass:"column is-one-quarter",staticStyle:{"margin-left":"25px","margin-right":"-75px","margin-top":"25px"}},[s("Sidebar")],1)])])},i=[],n=(s("96cf"),s("1da1")),r=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},c=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("nav",{staticClass:"panel has-background-white"},[s("p",{staticClass:"panel-heading"},[t._v(" Repositories ")]),s("div",{staticClass:"panel-block"},[s("p",{staticClass:"control has-icons-left"},[s("input",{staticClass:"input",attrs:{type:"text",placeholder:"Search"}}),s("span",{staticClass:"icon is-left"},[s("i",{staticClass:"fas fa-search",attrs:{"aria-hidden":"true"}})])])]),s("p",{staticClass:"panel-tabs"},[s("a",{staticClass:"is-active"},[t._v("All")]),s("a",[t._v("Public")]),s("a",[t._v("Private")]),s("a",[t._v("Sources")]),s("a",[t._v("Forks")])]),s("a",{staticClass:"panel-block is-active"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-book",attrs:{"aria-hidden":"true"}})]),t._v(" bulma ")]),s("a",{staticClass:"panel-block"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-book",attrs:{"aria-hidden":"true"}})]),t._v(" marksheet ")]),s("a",{staticClass:"panel-block"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-book",attrs:{"aria-hidden":"true"}})]),t._v(" minireset.css ")]),s("a",{staticClass:"panel-block"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-book",attrs:{"aria-hidden":"true"}})]),t._v(" jgthms.github.io ")]),s("a",{staticClass:"panel-block"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-code-branch",attrs:{"aria-hidden":"true"}})]),t._v(" daniellowtw/infboard ")]),s("a",{staticClass:"panel-block"},[s("span",{staticClass:"panel-icon"},[s("i",{staticClass:"fas fa-code-branch",attrs:{"aria-hidden":"true"}})]),t._v(" mojs ")]),s("label",{staticClass:"panel-block"},[s("input",{attrs:{type:"checkbox"}}),t._v(" remember me ")]),s("div",{staticClass:"panel-block"},[s("button",{staticClass:"button is-link is-outlined is-fullwidth"},[t._v(" Reset all filters ")])])])}],o={},l=o,u=s("2877"),d=Object(u["a"])(l,r,c,!1,null,null,null),p=d.exports,v=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"card mb-5 px-5 pb-5"},[s("div",{staticClass:"media pt-5"},[s("div",{staticClass:"media-left"},[s("figure",{staticClass:"image is-48x48"},[s("img",{attrs:{src:".../server/public/profiles/"+t.post.Owner_id+".jpg",alt:"Placeholder image"}})])]),s("br"),s("div",{staticClass:"media-content"},[s("p",{staticClass:"title is-4"},[t._v(t._s(t.post.FirstName)+" "+t._s(t.post.LastName))]),s("p",{staticClass:"subtitle is-6"},[s("time",{attrs:{datetime:t.post.created_at}},[t._v(t._s(t._f("moment")(t.post.created_at,"MMMM Do, YYYY [at] h:mm a")))])])])]),s("div",{staticClass:"content pl-5"},[s("p",{staticClass:"title is-6"},[t._v(t._s(t.post.Title))])]),s("nav",{staticClass:"level"},[s("div",{staticClass:"level-item has-text-centered"},[s("div",[s("p",{staticClass:"heading"},[t._v("Distance")]),s("p",{},[t._v(t._s(t.post.Distance)+" mi")])])]),s("div",{staticClass:"level-item has-text-centered"},[s("div",[s("p",{staticClass:"heading"},[t._v("Duration")]),s("p",{},[t._v(" "+t._s(new Date(t.post.End_Time).getHours()-new Date(t.post.Start_Time).getHours())+"h "+t._s(new Date(t.post.End_Time).getMinutes()-new Date(t.post.Start_Time).getMinutes())+"m ")])])]),s("div",{staticClass:"level-item has-text-centered"},[s("div",[s("p",{staticClass:"heading"},[t._v("Elev Gain")]),s("p",{},[t._v(t._s(t.post.Elevation)+" ft")])])])]),s("div",{staticClass:"card-image pb-3"},[s("figure",{staticClass:"image"},[s("img",{attrs:{src:t.post.URL}})])]),s("div",{staticClass:"content mt-1",staticStyle:{"font-size":"smaller"}},[s("span",{staticClass:"has-text-weight-semibold ml-2 "},[t._v(t._s(t.post.Reactions)+" reactions")]),s("div",{staticClass:"buttons is-pulled-right"},[t._m(0),s("button",{staticClass:"button is-light",on:{click:function(e){return e.preventDefault(),t.react(e)}}},[s("i",{staticClass:"fas fa-heart"})])])]),t._l(t.post.Comments,(function(e){return s("div",{key:e.id,staticClass:"media"},[s("div",{staticClass:"media-content pt-3"},[s("b",[t._v(t._s(e.FirstName)+" "+t._s(e.LastName)+" ")]),s("span",[t._v(t._s(e.Text))])])])})),s("div",{staticClass:"field has-addons",staticStyle:{width:"100%"}},[s("div",{staticClass:"control is-expanded"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.commentText,expression:"commentText"}],staticClass:"input",attrs:{type:"text",placeholder:"Add a comment"},domProps:{value:t.commentText},on:{input:function(e){e.target.composing||(t.commentText=e.target.value)}}})]),s("div",{staticClass:"control"},[s("a",{staticClass:"button",on:{click:function(e){return e.preventDefault(),t.comment(e)}}},[t._v(" Post ")])])])],2)},f=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("button",{staticClass:"button is-light"},[s("i",{staticClass:"far fa-thumbs-up"})])}],m=(s("a9e3"),s("773f")),h=s("5147"),C=function(){return Object(m["a"])("workouts/byUser/5")};function b(t){return Object(m["a"])("reactions",{Workout_id:t,Owner_id:5})}function _(t,e){return Object(m["a"])("comments",{Workout_id:t,Owner_id:5,Text:e})}var g={data:function(){return{commentText:""}},props:{post:Object,i:Number},methods:{react:function(){var t=this;b(this.post.id).then((function(e){return t.post.Reactions+=1})).catch((function(t){return console.error(t)}))},comment:function(){var t=this;return Object(n["a"])(regeneratorRuntime.mark((function e(){var s;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,_(t.post.id,t.commentText);case 2:s=e.sent,t.post.Comments.push(s);case 4:case"end":return e.stop()}}),e)})))()}}},x=g,w=(s("02b1"),Object(u["a"])(x,v,f,!1,null,null,null)),y=w.exports,k=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"card"},[t._m(0),s("footer",{staticClass:"card-footer"},[s("div",{staticClass:"card-footer-item has-text-centered"},[s("div",{staticClass:"has-text-centered"},[t._v(" Followers "),s("br"),s("span",{staticClass:"has-text-weight-bold"},[t._v(t._s(t.session.user.followers))])])]),s("p",{staticClass:"card-footer-item"},[s("span",{staticClass:"has-text-centered"},[t._v(" Following "),s("br"),s("span",{staticClass:"has-text-weight-bold"},[t._v(t._s(t.session.user.following))])])]),s("p",{staticClass:"card-footer-item"},[s("span",{staticClass:"has-text-centered"},[t._v(" Activities "),s("br"),s("span",{staticClass:"has-text-weight-bold"},[t._v(t._s(t.session.user.activities))])])])]),t._m(1)])},E=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"card-content has-text-centered"},[s("figure",{staticStyle:{"margin-top":"-86px"}},[s("img",{staticClass:"profile",attrs:{src:"https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg"}})]),s("p",{staticClass:"subtitle has-text-weight-bold"},[t._v(" Alex Carlson ")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"card"},[s("div",{staticClass:"card-content"},[s("div",{staticClass:"content"},[s("p",{staticClass:"has-text-weight-bold"},[t._v(" Latest Activity")]),t._v(" Afternoon Ride - "),s("time",{attrs:{datetime:"2020-10-6"}},[t._v("Oct 6 2020 - 11:09 AM")])])]),s("footer",{staticClass:"card-footer"},[s("div",{staticClass:"container"},[s("span",[s("a",{staticClass:"card-footer-item",attrs:{href:"#"}},[t._v("Manage Goals")])])])])])}],D={data:function(){return{session:h["a"]}}},N=D,S=(s("b8e4"),Object(u["a"])(N,k,E,!1,null,null,null)),T=S.exports,A=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("section",[t._m(0),s("div",{staticClass:" has-text-centered"},[s("b-datepicker",{attrs:{inline:"",events:t.events,indicators:t.indicators},model:{value:t.date,callback:function(e){t.date=e},expression:"date"}})],1)])},j=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"card-title has-background-white py-3",staticStyle:{"margin-right":"-21px"}},[s("h4",{staticClass:"title is-4 has-text-centered"},[t._v("Activity Scheduler")])])}],I=(new Date).getMonth(),O={data:function(){return{date:new Date(2020,I,1),events:[new Date(2020,I,2),new Date(2020,I,6),{date:new Date(2020,I,6),type:"is-info"},{date:new Date(2020,I,8),type:"is-danger"},{date:new Date(2020,I,10),type:"is-success"},{date:new Date(2020,I,10),type:"is-link"},new Date(2020,I,12),{date:new Date(2020,I,12),type:"is-warning"},{date:new Date(2020,I,16),type:"is-danger"},new Date(2020,I,20),{date:new Date(2020,I,29),type:"is-success"},{date:new Date(2020,I,29),type:"is-warning"},{date:new Date(2020,I,29),type:"is-info"}],bars:!1}}},F=O,M=Object(u["a"])(F,A,j,!1,null,null,null),R=M.exports,$={data:function(){return{posts:[]}},created:function(){var t=this;return Object(n["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,C();case 2:t.posts=e.sent;case 3:case"end":return e.stop()}}),e)})))()},components:{Sidebar:p,Post:y,Userpanel:T,Calendar:R},methods:{error:function(){}}},P=$,L=(s("2b56"),Object(u["a"])(P,a,i,!1,null,null,null));e["default"]=L.exports},"7f46":function(t,e,s){},"91aa":function(t,e,s){},a9e3:function(t,e,s){"use strict";var a=s("83ab"),i=s("da84"),n=s("94ca"),r=s("6eeb"),c=s("5135"),o=s("c6b6"),l=s("7156"),u=s("c04e"),d=s("d039"),p=s("7c73"),v=s("241c").f,f=s("06cf").f,m=s("9bf2").f,h=s("58a8").trim,C="Number",b=i[C],_=b.prototype,g=o(p(_))==C,x=function(t){var e,s,a,i,n,r,c,o,l=u(t,!1);if("string"==typeof l&&l.length>2)if(l=h(l),e=l.charCodeAt(0),43===e||45===e){if(s=l.charCodeAt(2),88===s||120===s)return NaN}else if(48===e){switch(l.charCodeAt(1)){case 66:case 98:a=2,i=49;break;case 79:case 111:a=8,i=55;break;default:return+l}for(n=l.slice(2),r=n.length,c=0;c<r;c++)if(o=n.charCodeAt(c),o<48||o>i)return NaN;return parseInt(n,a)}return+l};if(n(C,!b(" 0o1")||!b("0b1")||b("+0x1"))){for(var w,y=function(t){var e=arguments.length<1?0:t,s=this;return s instanceof y&&(g?d((function(){_.valueOf.call(s)})):o(s)!=C)?l(new b(x(e)),s,y):x(e)},k=a?v(b):"MAX_VALUE,MIN_VALUE,NaN,NEGATIVE_INFINITY,POSITIVE_INFINITY,EPSILON,isFinite,isInteger,isNaN,isSafeInteger,MAX_SAFE_INTEGER,MIN_SAFE_INTEGER,parseFloat,parseInt,isInteger".split(","),E=0;k.length>E;E++)c(b,w=k[E])&&!c(y,w)&&m(y,w,f(b,w));y.prototype=_,_.constructor=y,r(i,C,y)}},b8e4:function(t,e,s){"use strict";var a=s("e7f5"),i=s.n(a);i.a},e76e:function(t,e,s){"use strict";var a=s("91aa"),i=s.n(a);i.a},e7f5:function(t,e,s){},f820:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},i=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"about"}},[s("section",{staticClass:"hero box is-medium",staticStyle:{"margin-top":"-80px","margin-bottom":"-80px","background-color":"Tomato"}},[s("div",{staticClass:"hero-body"},[s("div",{staticClass:"container"},[s("h1",{staticClass:"title has-text-weight-semi-bold has-text-white"},[t._v(" Here to Help you Track, Adapt, and Grow ")]),s("h2",{staticClass:"subtitle"},[s("i",{staticClass:"fa fa-fire",attrs:{"aria-hidden":"true"}}),t._v(" FuelBurner is just getting started ")])])])]),s("section",[s("div",{staticClass:"container box px-5 py-5"},[s("p",[s("span",{staticStyle:{"margin-left":"40px"}},[t._v(" We")]),t._v(" are all brilliant, athletic machines at our core. When we have passion and goals, we can astound ourselves with our accomplishments. To better oneself, one must look to push boundaries and set new personal records. Whether we are just beginning our journey or already a master of our own athletic destiny, it's important to measure our progress and successes and use them to catapult to new heights."),s("br"),s("br")]),s("br"),s("div",{staticClass:"has-text-centered pb-5"},[s("h2",{staticClass:"subtitle has-text-weight-semibold"},[t._v("Meet The Developer")])]),s("div",{staticClass:"columns"},[s("div",{staticClass:"column"}),s("div",{staticClass:"column"},[s("nav",{staticClass:"level pb-5"},[s("div",{staticClass:"level-item"},[s("figure",{staticClass:"image is-128x128"},[s("img",{staticClass:"is-rounded",attrs:{src:"https://u.cubeupload.com/biking_viking/port.jpg"}})])]),s("div",{staticClass:"level-item"},[s("figure",{staticClass:"image is-128x128"},[s("img",{staticClass:"is-rounded",attrs:{src:"https://u.cubeupload.com/biking_viking/hangincroppedcopy.jpg"}})])])])]),s("div",{staticClass:"column"})]),s("br"),s("p",[s("span",{staticStyle:{"margin-left":"40px"}},[t._v("Founded")]),t._v(" in August, 2020 by Alex Carlson (an avid hiker, mountain biker, and ocean kayaker), FuelBurner is dedicated to improving each and every day to provide the best experience for its users. We will continue to build our community together, with the same determination we apply to growing ourselves. ")])])])])}],n={},r=n,c=(s("e76e"),s("2877")),o=Object(c["a"])(r,a,i,!1,null,null,null);e["default"]=o.exports}}]);
//# sourceMappingURL=about.258cc813.js.map