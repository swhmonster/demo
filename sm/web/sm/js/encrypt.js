  function selectFile(){  
                //触发 文件选择的click事件  
                $("#file").trigger("click");  
  
            //其他code如 alert($("#file").attr("value"))  
            }  
              
            /* 获取 文件的路径 ，用于测试*/  
            function getFilePath(){
                document.getElementById('t1').value=$('#file').val();
            } 
 
function BrowseFolder() {
    try {
        var Message = "Please select the folder path.";  //选择框提示信息
        var Shell = new ActiveXObject("Shell.Application");
        var Folder = Shell.BrowseForFolder(0, Message, 0x0040, 0x11); //起始目录为：我的电脑
        //var Folder = Shell.BrowseForFolder(0,Message,0); //起始目录为：桌面
        if (Folder != null) {
            Folder = Folder.items();  // 返回 FolderItems 对象
            Folder = Folder.item();  // 返回 Folderitem 对象
            Folder = Folder.Path;   // 返回路径
            if (Folder.charAt(Folder.length - 1) != "\\") {
                Folder = Folder + "\\";
            }
            return Folder;
        }
    } catch (e) {
        alert(e.message);
    }
}


function Save(){
	 var fileObj = document.getElementById("file").files[0]; 
	 var key= document.getElementById('t2');
   if (typeof (fileObj) == "undefined" || fileObj.size <= 0) {
               alert("请选择文件！！！");
               return;
           }
   if(document.getElementById("t2").value==""){
	   	alert("请输入密钥！！！");
	   	return;
	   }
	   
//           var formFile = new FormData();
//           formFile.append("file", fileObj); //加入文件对象
//           formFile.append("key",key);
   var data = new FormData($("#uploadForm")[0]);
//	var data=formFile;
	$.ajax({
                   url: "http://localhost:8585/sm/sm",
                   data: data,
                   type: "Post",
                   dataType: "json",
                   cache: false,//上传文件无需缓存
                   processData: false,//用于对data参数进行序列化处理 这里必须false
                   contentType: false, //必须
                   success: function (result) {
                       alert("上传完成!");
                   },
               })
     alert("提交保存成功!!!");
}

function KeyRandom(){
	var key = "";
	for(var i=0;i<8;i++){
		key+=Math.floor(Math.random()*10);
	}
	document.getElementById("t2").value=key;
}

function DownLoad(){ 
	if(document.getElementById("t2").value==""){
	   	alert("请先上传文件！！！");
	   	return;
	   }
	if(document.getElementById("optionsRadios6").checked==false){
		alert("请选择操作后下载！！！");
	   	return;
	}
     window.open(url="http://localhost:8585/sm/sm/download");  
}