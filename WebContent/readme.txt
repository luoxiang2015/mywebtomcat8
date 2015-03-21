源：
http://www.ljlsky.com/

705182 Youxi741
【视频：The BIG Talk硅谷峰会：深度学习和在线教育】
http://www.iqiyi.com/v_19rro2tzdo.html?src=sharemodclk131212

配置的tomcat 8.0

日志 2015-02-27  VLOOKUP
excel表格 A表格 两列 拿到B表格 进行检索 获得相应行数  取B表格对应 行数的某一列 放到A表格固定位置
vlookup 函数  将A表格两列进行合并 B表格同理  拿A表格的某列到B表格检索后 获取值后进行填入。
=VLOOKUP(W25,[001到货单列表.XLS]价格综合!$J:$K,2,FALSE())

日志 2015-02-27  mysql存储图片
新建数据库 - 表 存储图片路径

日志 2015-03-22  前后端传值
struts2 的OGNL表达式可以：public PeopleAction extends ActionSuper{
private List<People> peopleList; //定义需要传递到页面的list对象 需要提供get set 方法
get...
set...

public String getList(){
peopleList = peopleServer.getList(); //将获取的数据赋值给list
}
然后再需要显示的页面使用jstl或者struts自己的标签循环显示
<c:forEach item="${peopleList}" var="item">
....
</c:forEach>
   
}