<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/1.css">
<script type="text/javascript" src="resources/js/ScrollPic.js"></script>
<script type="text/javascript" src="resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
/* $(document).ready(function(){
	$.ajax({
		url:"GetArticleAction",
		type:"post",	//数据发送方式
		async:false,
	 	params:{
			mark:"工作学习",
			num:5,
			sort:"article_date",
		}, 
		dataType:"json", //接受数据格式
		error:function(){
			alert("服务器没有返回数据，可能服务器忙，请重试");
		},
		success:function(json){
			var listArray = eval(json).titlelist;
			for(var i = 0;i<listArray.length;i++){
				$("ul_work ul").append("<li>"+listArray[i]+"</li>");
			}
		}
	}
	)
}); */
$(document).ready(
		function(){
			$.ajax(
			{
				url:"ArticleServlet",
				type:"post",
				dateType:"html",
				error:function(){
					alert("服务器没有返回数据");
				},
				success:function(data){
					var data = eval("("+data+")");
					//console.log(string);
					//alert(data.Article[0].ArticleTitle[0]);
					var b ;
					for(i = 0;i<data.ArticleTitle.length;i++){
						b = i+1;
						$("#ul_work ul").append("<li><span class=\"num-top\">"+b+"</span><a title=\"测试文字\"href=\"**.jsp?id=123\">"+data.ArticleTitle[i]+"</a></li>");
						
//<li><span class="num-top">3</span><a title="测试文字"
						//href="**.jsp?id=123">测试文字测试文字 </a></li>						
						//alert(data.ArticleTitle[i]);
					}
					
					
				}
			}		
			)
			
		}
		
		);















</script>

















<title>小罗的个人博客-我的主页</title>
</head>
<body>
	<div id="main">
		<!-- head start -->
		<div id="head">
			<div id="logo">
				<div class="lg"></div>
				<h3>小罗的个人博客</h3>
			</div>
			<div id="nav">
				<ul>
					<li class="sel"><a href="index.jsp">首页</a></li>
					<li><a href="blog.jsp">博客</a></li>
					<li><a href="photo.jsp">相册</a></li>
					<li><a href="downlist.jsp">资源</a></li>
					<li><a href="link.jsp">收藏</a></li>
					<li><a href="map.html">旅行</a></li>
					<li><a href="post.jsp">留言</a></li>
					<li><a href="myself.jsp">关于我</a></li>
				</ul>
			</div>

		</div>
		<!-- left start -->
		<div id="sidebar">
			<div class="nav-title">
				<div id="welc" class="nav-title-lift">欢迎您！朋友</div>
				<div class="nav-title-right"></div>
			</div>
			<div id="side_1">
				<dl>
					<dt>
						<img alt="新会员" src="resources/face/m01.jpg">
					</dt>
					<dd>小罗</dd>
					<dd>
						<a>[设为首页]</a>|<a>[加入收藏]</a>
					</dd>
					<dd style="margin-left: 0px;">
						<a href="mailto:344506825@qq.com" target=""><img
							alt="点击这里给我发邮件" src="resources/images/mail.gif"></a> <a
							href="http://wpa.qq.com/msgrd?v=3&amp;uin=344506825&amp;site=qq&amp;menu=yes"
							target=""><img alt="点击这里与我交谈"
							src="http://wpa.qq.com/pa?p=2:344506825:41" title="Q:344506825"
							border="0"></a>
					</dd>
				</dl>
			</div>
			<div class="nav-title">
				<div class="nav-title-lift">关于站长</div>
				<div class="nav-title-right"></div>
			</div>
			<div id="side_2">
				<span>怀着一颗感恩的心去看待社会，看待父母，看待亲朋，你将会发现自己是多么快乐，放开你的胸襟，让霖霖细雨洗刷你心灵的污染，学会感恩，因为这会使世界变得更美好，是生活更加充实，集体温暖。</span>
			</div>
			<div class="nav-title">
				<div class="nav-title-lift">微博秀</div>
				<div class="nav-title-right"></div>
			</div>
			<div id="side_3">
				<iframe class="share_self" width="100%" height="300" frameborder="0"
					scrolling="no" src=""> </iframe>
			</div>
			<div class="nav-title">
				<div class="nav-title-lift">天气预报</div>
				<div class="nav-title-right"></div>
			</div>
			<!-- 天气插件  <script type="text/javascript" src="http://ext.weather.com.cn/87980.js"></script> -->
			<div id="side_1">
				<div>
					<iframe src="http://ext.weather.com.cn/44053.html" scrolling="no"
						style="z-index: 99999; width: 190px; height: 170px; border: 0px none;"
						frameborder="0"></iframe>
				</div>
			</div>
		</div>
		<!-- left end -->
		<!-- content start -->
		<div id="content">
			<div id="con_1">
				<div class="l_con_1">
					<h3 style="color: red; text-align: center;">【置顶】- 有志者 事竟成</h3>
					<br> <span>一个人的志向应当保持高尚远大，仰慕先贤人物，断绝情欲，不凝至于物，使贤者的志向高高地有所保存，诚恳地有所感受，能屈能伸，抛弃琐碎的东西，广泛地向他人咨询，学习，除去狭隘，悭吝，这样即使未能升迁，以何损于自己美好情趣？何愁理想不能实现？如果意志不坚定，意气不昂扬，徒然随众附和，沉溺于习俗私情，碌碌无为，就将继续伏匿于凡庸人之中，终究不免于卑下的地位。</span>
				</div>
				<div class="l_con_2">
					<form method="post" action="blog.jsp">
						站内文章检索： <input
							style="width: 240px; height: 20px; border: 1px solid #999;"
							name="keywords"></input> <input type="image"
							src="resources/images/search_dot.jpg"></input>
					</form>
				</div>
				<p style="height: 100px; text-align: center;">
					<img style="border: 1px solid #60A0B9; border-right: 0px;"
						src="resources/images/weibo.jpg"> <a
						href="http://t.qq.com/luoxiang492" target="_blank"><img
						src="http://mat1.gtimg.com/www/mb/img/timeline/timelinelogo.png"
						height="100" width="390"></a>
				</p>
				<div class="nav-title">
					<div class="nav-title-lift">文章更新</div>
					<div class="nav-title-right"></div>
				</div>
				<div class="con_list l_con_3">
					<ul>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
						<li><span class="time">2014-10-14</span><a title="数据库误操作还原"
							href="**.jsp?id=123">[经验总结] 数据库误操作还原 </a></li>
					</ul>

				</div>
			</div>
			<div
				style="float: right; width: 240px; background: none repeat scroll 0% 0% #E1E0CC;">
				<div class="nav-title">
					<div class="nav-title-lift">推荐文章</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<div class="con_list">
					<ul>
						<li><span class="num-top">1</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">2</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字</a></li>
						<li><span class="num-top">3</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">4</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">5</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">6</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">7</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">8</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">9</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">10</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>

					</ul>
				</div>
				<div class="con_list">
					<div class="nav-title">
						<div class="nav-title-lift">下载排行</div>
						<div class="nav-title-right">
							<a class="more" href="blog.jsp">更多...</a>
						</div>
					</div>
					<ul>
						<li><span class="num-top">1</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">2</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字</a></li>
						<li><span class="num-top">3</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">4</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">5</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">6</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">7</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">8</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">9</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
						<li><span class="num-top">10</span><a title="测试文字"
							href="**.jsp?id=123">测试文字测试文字 </a></li>
					</ul>
				</div>
			</div>
			<!-- 去除浮动 -->
			<div class="clear"></div>
			<!-- 广告 -->
			<div class="adshow"
				style="width: 720px; height: 90px; background-color: gray;">
				<p style="text-align: center; font-size: 25px; color: #000; padding-top: 20px;">广告位test</p> 
				<form method="post" action="uuid2">
					<textarea id="id_uuid"  onclick="uuid()" rows="1" cols="20"></textarea> 
					<button style="height: 15px; width: 35px; " onclick="reset_uuid()"  value="重新获取uuid"></button>
					<input id="input1" name="input1" style=" height: 10px; width: 50px;" />
					<input type="submit" />
				</form>
			</div>
			<div class="con_3">
				<div class="nav-title">
					<div class="nav-title-lift">图片更新</div>
					<div class="nav-title-right"></div>
				</div>
				<div class="con_photo">
					<div id="LeftArr" class="LeftButton"></div>
					<div id="ISL_Cont_1" class="Cont"
						style="width: 630px; overflow: hidden;">
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接1</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接2</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接3</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接4</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接5</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接6</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接7</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接8</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接9</a>
							</p>
						</div>
						<div class="box">
							<a target="_blank" href="#"><img width="145" height="94"
								alt="测试图片" src="TEMP/img/s20130916163847.jpg"></a>
							<p>
								<a target="_blank" href="#">测试链接10</a>
							</p>
						</div>
					</div>
					<div id="RightArr" class="RightButton"></div>
					<script type="text/javascript" language="javascript">
						// 先加载ScrollPic.js插件后再执行以下语句
						var scrollPic_02 = new ScrollPic();
						scrollPic_02.scrollContId = "ISL_Cont_1"; //内容容器ID
						scrollPic_02.arrLeftId = "LeftArr";//左箭头ID
						scrollPic_02.arrRightId = "RightArr"; //右箭头ID
						scrollPic_02.frameWidth = 630;//显示框宽度
						scrollPic_02.pageWidth = 160; //翻页宽度
						scrollPic_02.speed = 10; //移动速度(单位毫秒，越小越快)
						scrollPic_02.space = 100; //每次移动像素(单位px，越大越快)
						scrollPic_02.autoPlay = true; //自动播放
						scrollPic_02.autoPlayTime = 3; //自动播放间隔时间(秒)
						scrollPic_02.initialize(); //初始化
					</script>
				</div>
			</div>

		</div>
		<div style="clear: both;"></div>
		<!--  -->
		<div class="adshow_2">
			<div id="StarIframe_wrapper_11">广告位</div>
		</div>
		<!-- 三列并排 -->
		<!-- 修改span时去 1.css 中删除  .con_4 .con_list li 属性。 -->
		<div class="con_4">
			<!-- 心情日记 -->
			<div class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">心情日记</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
					<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
				</ul>
			</div>
			<!-- 工作学习 -->
			<div id="ul_work" class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">工作学习</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
			<!-- 		<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li> -->
				</ul>
			</div>
			<!-- 编程趣事 -->
			<div class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">编程趣事</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
					<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
				</ul>
			</div>
		</div>
		<!-- <div style="clear: both;"> </div> -->
		<div class="adshow_3">广告位</div>
		<!-- 三列并排2 -->
		<!-- 修改span时去 1.css 中删除  .con_4 .con_list li 属性。 -->
		<div class="con_4">
			<!-- 软件下载 -->
			<div class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">软件下载</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
					<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
				</ul>
			</div>
			<!-- 源码分享 -->
			<div class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">源码分享</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
					<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
				</ul>
			</div>
			<!-- 学习资料-->
			<div class="con_list" style="float: left; width: 315px;">
				<div class="nav-title">
					<div class="nav-title-lift">学习资料</div>
					<div class="nav-title-right">
						<a class="more" href="blog.jsp">更多...</a>
					</div>
				</div>
				<ul>
					<li><span class="num-top">1</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">2</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">3</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">4</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">5</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">6</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">7</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">8</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">9</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
					<li><span class="num-top">10</span><a title="测试文字"
						href="**.jsp?id=123">测试文字测试文字 </a></li>
				</ul>
			</div>
		</div>
		<div class="con_5">
			<div class="nav-title">
				<div class="nav-title-lift">友情链接</div>
				<div class="nav-title-right">
					<a class="more" href="blog.jsp">申请友链</a>
				</div>
			</div>
			<div class="con_fri">
				|<a>测试文字1</a>|<a>测试文字2</a>|<a>测试文字3</a>|<a>测试文字4</a>|<a>测试文字5</a>|<a>测试文字6</a>|
			</div>
		</div>
	<div id="footer">
  <p><a href="link.jsp?types=1">友情链接</a>|<a href="myself.jsp">关于我们</a>|<a href="post.jsp">给我留言</a>|<a href="site.jsp">站点地图</a></p>
  <p>本站部分文章、资源来自互联网，版权归原作者及网站所有，如果侵犯了您的权利，请及时致信告知我站.</p>
  <p>版权声明：凡文章来源注明为本站的文章、图片、视频等信息，请在转载时保留本站链接。</p>
  <p>©2013-2015 小罗个人网站,All Rights Reserved.</p> 
  <p>访问统计：你是本站第    <a href="visit.jsp" id="visitID">95243</a>  位访客</p>
  <p><a href="http://www.miibeian.gov.cn" target="_blank">渝ICP备13006414号-1</a></p>
  <p><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cdiv id='cnzz_stat_icon_1000021889'%3E%3C/div%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000021889%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></p><div id="cnzz_stat_icon_1000021889"><a href="http://www.cnzz.com/stat/website.php?web_id=1000021889" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif"></a></div><script src=" http://s22.cnzz.com/z_stat.php?id=1000021889&amp;show=pic" type="text/javascript"></script><script src="http://c.cnzz.com/core.php?web_id=1000021889&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script><p></p>
</div>
	</div>
</body>
</html>