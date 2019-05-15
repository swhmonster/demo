  function selectFile(){  
                //触发 文件选择的click事件  
                $("#file1").trigger("click");  
  
            //其他code如 alert($("#file").attr("value"))  
            }  
              
            /* 获取 文件的路径 ，用于测试*/  
            function getFilePath(){
                document.getElementById('t4').value=$('#file1').val();
            } 