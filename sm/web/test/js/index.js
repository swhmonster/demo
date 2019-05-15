var data= {
				"C_BH_AJ":"BEAF2B9E14CD777A6E9A6E38DA3E5F9A",
				"N_AJBS":240000000821975,
				"C_AJLB":"0201",
				"N_JBFY":2400
	};
function Post(){
	$.ajax({
                   url: "http://172.23.20.35:8585/export15xml_frame/.senddata",
                   data: data,
                   type: "Post",
                   dataType: "json",
                   success: function (result) {
                       alert("请求成功!");
                   }
               })
}
