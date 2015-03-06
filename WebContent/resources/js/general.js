/**
 * 获取 uuid
 */
function uuid(){
	var s ='<%=uuid.getUuid()%>';
	document.getElementById("id_uuid").value = s;
}
function reset_uuid(){
	document.getElementById("id_uuid").value = "";
	/*uuid();*/
}