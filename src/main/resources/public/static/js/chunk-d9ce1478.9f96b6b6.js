(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-d9ce1478"],{"333d":function(e,t,i){"use strict";var a=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("div",{staticClass:"pagination-container",class:{hidden:e.hidden}},[i("el-pagination",e._b({attrs:{background:e.background,"current-page":e.currentPage,"page-size":e.pageSize,layout:e.layout,"page-sizes":e.pageSizes,total:e.total},on:{"update:currentPage":function(t){e.currentPage=t},"update:current-page":function(t){e.currentPage=t},"update:pageSize":function(t){e.pageSize=t},"update:page-size":function(t){e.pageSize=t},"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}},"el-pagination",e.$attrs,!1))],1)},n=[];i("c5f6");Math.easeInOutQuad=function(e,t,i,a){return e/=a/2,e<1?i/2*e*e+t:(e--,-i/2*(e*(e-2)-1)+t)};var o=function(){return window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||function(e){window.setTimeout(e,1e3/60)}}();function r(e){document.documentElement.scrollTop=e,document.body.parentNode.scrollTop=e,document.body.scrollTop=e}function s(){return document.documentElement.scrollTop||document.body.parentNode.scrollTop||document.body.scrollTop}function l(e,t,i){var a=s(),n=e-a,l=20,u=0;t="undefined"===typeof t?500:t;var c=function e(){u+=l;var s=Math.easeInOutQuad(u,a,n,t);r(s),u<t?o(e):i&&"function"===typeof i&&i()};c()}var u={name:"Pagination",props:{total:{required:!0,type:Number},page:{type:Number,default:1},limit:{type:Number,default:20},pageSizes:{type:Array,default:function(){return[10,20,30,50]}},layout:{type:String,default:"total, sizes, prev, pager, next, jumper"},background:{type:Boolean,default:!0},autoScroll:{type:Boolean,default:!0},hidden:{type:Boolean,default:!1}},computed:{currentPage:{get:function(){return this.page},set:function(e){this.$emit("update:page",e)}},pageSize:{get:function(){return this.limit},set:function(e){this.$emit("update:limit",e)}}},methods:{handleSizeChange:function(e){this.$emit("pagination",{page:this.currentPage,limit:e}),this.autoScroll&&l(0,800)},handleCurrentChange:function(e){this.$emit("pagination",{page:e,limit:this.pageSize}),this.autoScroll&&l(0,800)}}},c=u,d=(i("42fa"),i("2877")),p=Object(d["a"])(c,a,n,!1,null,"4cec1bdb",null);t["a"]=p.exports},"42fa":function(e,t,i){"use strict";var a=i("5737"),n=i.n(a);n.a},5737:function(e,t,i){},"68b0":function(e,t,i){"use strict";i.r(t);var a=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("div",{staticClass:"app-container"},[i("div",{staticClass:"filter-container",staticStyle:{"margin-top":"30px"}},[i("el-input",{staticClass:"filter-item",staticStyle:{width:"200px"},attrs:{placeholder:"文件名"},model:{value:e.listQuery.name,callback:function(t){e.$set(e.listQuery,"name",t)},expression:"listQuery.name"}}),e._v(" "),i("el-button",{staticClass:"filter-item",attrs:{type:"primary",icon:"el-icon-search"},on:{click:e.handleSearch}},[e._v("查找")]),e._v(" "),i("el-button",{staticClass:"filter-item",staticStyle:{"margin-left":"10px"},attrs:{type:"primary",icon:"el-icon-edit"},on:{click:e.handleCreate}},[e._v("上传TikTok")])],1),e._v(" "),i("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],key:e.tableKey,staticStyle:{width:"100%"},attrs:{data:e.list,border:"",height:"450"}},[i("el-table-column",{attrs:{prop:"name",label:"文件名"}}),e._v(" "),i("el-table-column",{attrs:{prop:"path",label:"路径"}}),e._v(" "),i("el-table-column",{attrs:{prop:"createtime",label:"上传时间",formatter:e.formatDateTime}}),e._v(" "),i("el-table-column",{attrs:{label:"操作"},scopedSlots:e._u([{key:"default",fn:function(t){return[i("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(i){return e.handleView(t)}}},[e._v("查看")]),e._v(" "),i("el-button",{attrs:{type:"danger",size:"small"},on:{click:function(i){return e.handleDelete(t)}}},[e._v("删除")])]}}])})],1),e._v(" "),i("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.listQuery.page,limit:e.listQuery.limit},on:{"update:page":function(t){return e.$set(e.listQuery,"page",t)},"update:limit":function(t){return e.$set(e.listQuery,"limit",t)},pagination:e.getList}}),e._v(" "),i("el-dialog",{attrs:{visible:e.dialogVisible,title:"edit"===e.dialogType?"编辑":"上传"},on:{"update:visible":function(t){e.dialogVisible=t}}},[i("div",{staticStyle:{"text-align":"center"}},[i("el-upload",{staticClass:"upload-demo",attrs:{drag:"",headers:e.headersObj,action:e.uplodatPath,"before-upload":e.beforeUploadVideo,"on-success":e.handleVideoSuccess}},[i("i",{staticClass:"el-icon-upload"}),e._v(" "),i("div",{staticClass:"el-upload__text"},[e._v("\n          将文件拖到此处，或\n          "),i("em",[e._v("点击上传")])]),e._v(" "),i("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[e._v('\n          只能上传"video/mp4",\n          "video/ogg",\n          "video/flv",\n          "video/avi",\n          "video/wmv",\n          "video/rmvb"文件，且不超过50M\n        ')])])],1)]),e._v(" "),i("el-dialog",{attrs:{visible:e.dialogVisible1},on:{"update:visible":function(t){e.dialogVisible1=t}}},[i("div",{staticStyle:{"text-align":"center"}},[i("video",{staticStyle:{width:"500px",height:"550px","max-width":"90%"},attrs:{src:e.videoUrl,controls:"controls"}},[e._v("您的浏览器不支持视频播放")])])])],1)},n=[],o=(i("7f7f"),i("96cf"),i("3b8d")),r=i("5f87"),s=i("b775");function l(e){return Object(s["a"])({url:"/rest/video/tiktok/list",method:"post",data:e})}function u(e){return Object(s["a"])({url:"/rest/video/tiktok/delete",method:"get",params:{id:e}})}var c=i("333d"),d=i("ed08"),p=Object(r["a"])(),m={name:"TikTok",components:{Pagination:c["a"]},data:function(){return{tableKey:0,list:null,total:0,listLoading:!1,listQuery:{page:1,limit:10,name:""},headersObj:{"LinkAdmin-Token":p},uplodatPath:"http://47.103.154.36:8888/rest/video/tiktok/upload",dialogVisible:!1,dialogVisible1:!1,dialogType:"new",videoUrl:""}},created:function(){this.getList()},methods:{getList:function(){var e=Object(o["a"])(regeneratorRuntime.mark(function e(){var t;return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return this.listLoading=!0,e.prev=1,e.next=4,l(this.listQuery);case 4:t=e.sent,this.listLoading=!1,this.list=t.result.rows,this.total=t.result.records,e.next=13;break;case 10:e.prev=10,e.t0=e["catch"](1),this.listLoading=!1;case 13:case"end":return e.stop()}},e,this,[[1,10]])}));function t(){return e.apply(this,arguments)}return t}(),handleSearch:function(){this.getList()},formatDateTime:function(e,t){return Object(d["d"])(e.createtime)},beforeUploadVideo:function(e){var t=e.size/1024/1024<50;return-1===["video/mp4","video/ogg","video/flv","video/avi","video/wmv","video/rmvb"].indexOf(e.type)?(this.$message.error("请上传正确的视频格式"),!1):t?void 0:(this.$message.error("上传视频大小不能超过50MB哦!"),!1)},handleVideoSuccess:function(e,t){2e4===e.code?(this.$message.success("上传成功"),this.getList()):this.$message.error(e.msg)},handleCreate:function(){this.dialogType="new",this.dialogVisible=!0},handleView:function(e){var t=e.row;this.dialogVisible1=!0,this.videoUrl="http://47.103.154.36:8888/rest/video/tiktok/view?path="+t.name},handleDelete:function(e){var t=this,i=e.row;this.$confirm("确认删除?","警告",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(Object(o["a"])(regeneratorRuntime.mark(function e(){return regeneratorRuntime.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,u(i.id);case 2:t.$message({showClose:!0,message:"删除成功",type:"success"}),t.getList();case 4:case"end":return e.stop()}},e)}))).catch(function(e){console.error(e)})}}},g=m,h=i("2877"),f=Object(h["a"])(g,a,n,!1,null,null,null);t["default"]=f.exports}}]);