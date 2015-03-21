/**
 * 获取 uuid
 */
/*function uuid(){
	var s ='<%=uuid.getUuid()%>';
	document.getElementById("id_uuid").value = s;
}
function reset_uuid(){
	document.getElementById("id_uuid").value = "";
	uuid();
}*/
// 窗体加载时执行的函数
//http://zhidao.baidu.com/link?url=P_sGVTjQU0aGeOZ525B0vizDfKgSOYl18BgIDhFa86FkXZLfJJ90jcUWbHW2WgUxQbPx1nWvayinK6wlAioENK
window.onload=function(){
    /**
	   *  ajax请求
	   */
	            var xmlhttp = null;
	            if (window.ActiveXObject) {
	                //IE5 IE6是以activexobject的方式引入xmlhttprequset对象的
	                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	            } else if (window.XMLHttpRequest) {
	                //除ie5 IE6以外的浏览器xmlhttprequset是window的子对象
	                xmlhttp = new XMLHttpRequest();
	            }
	            if (!xmlhttp) {
	                alert("创建xmlhttp对象异常");
	                return false;
	            }
	            // xmlhttp.open("POST", "user.action?id=33", false); //准备向服务器的Getdate1发送post请求
	            xmlhttp.open("POST", "getArticleTitleAction", false); //中文要用encodeURI
	            xmlhttp.onreadystatechange = function () {
	                if (xmlhttp.readyState == 4) {      //请求完成加载
	                    if (xmlhttp.status == 200) {    //响应已经成功
	                       if(xmlhttp.responseText == "success"){ //xmlhttp.responseText这里面是你返回的字符串
	                          alert("成功");
	                       }
	                    } else {
	                        alert("没有查询到信息！");
	                    }
	                }
	            }
	            xmlhttp.send();   // 这时才开始发送请求
	          

	
}