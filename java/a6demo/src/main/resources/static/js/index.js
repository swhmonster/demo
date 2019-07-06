// **********************************************//
// index 客户端脚本
//
// @author huayu
// @date 2019-06-06
// **********************************************//

var vm = new Vue({
    el: '#app',
    mixins: [atyTplMixin],
    data: function () {
        return {
            lbdata: [],
            wsmc:'新的文书名称'
        }
    },
    created: function(queryinfo){
        var _this= this;
            Artery.loadPageData("/index/lbdata",queryinfo).then(function (value) {
                vm.lbdata = value;
            }).catch (function(error) {
                console.error(error.message);
            });
    },
    methods: {
        updateWs:function (bh) {
            Artery.ajax.put('/index/newWsmc/'+bh+'/'+this.wsmc).then(function (value) {
                if(value>0){
                    alert("update sucess");
                    window.location.reload();
                }
            });
        },

        deleteWs:function (bh) {
            Artery.ajax.delete('/index/deleteWs/'+bh).then(function (value) {
                if(value>0){
                    alert("delete success");
                    window.location.reload();
                }
            });
        }
    }
})