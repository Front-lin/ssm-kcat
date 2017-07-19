<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!--[if lt IE 8]><script>window.location.href="${pageContext.request.contextPath}/error/index.jsp"</script><![endif]-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>专业软件</title>
<link rel="Shortcut Icon" href="${pageContext.request.contextPath}/images/tubiao.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/zyrj.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.js"></script>
<script type="text/javascript">
$(function(){

	var html="";
	$.ajaxSetup({async:false});
 	$.post("${pageContext.request.contextPath}/getStudySoftB.do",function(data){  //循环标题
		$.each(data,function(i,e){	
			html+="<div class='zuo'><div class='nav_b'><ul><li class='xueyuan'>"+data[i].titleBName+"</li></ul></div>";
			$.post("${pageContext.request.contextPath}/getStudySoftS.do",{'titleS_to_titleB':data[i].id},function(data_2){  //循环小标题
				$.each(data_2,function(j,f){
					html+="<div style='padding-top:60px;' class='zhuanye' id='ac"+data_2[j].id+"'><p>"+data_2[j].titleSName+"</p><img src='${pageContext.request.contextPath}/images/hr.png' class='hr'>";
					$.post("${pageContext.request.contextPath}/getStudySoft.do",{'soft_to_titleS':data_2[j].id},function(data_3){  //循环软件内容
						$.each(data_3,function(k,g){
							var href = "${pageContext.request.contextPath}/getStudySoft_All.do?num="+data_3[k].id;
							html+="<div class='ruanjian'><a href='"+href+"' target='_blank'><img src='http://kcat-1251241286.cosgz.myqcloud.com/images/"+data_3[k].softImage+"'/></a>";
							html+="<a href='"+href+"' target='_blank'><p class='big'>"+data_3[k].softName+"</p></a>";
							html+="<p class='small'>"+data_3[k].softType+"</p><a href='"+href+"' target='_blank'><img src='${pageContext.request.contextPath}/images/bxiazai.png' class='xiazai'/></a></div>";
						});
					});
					html+="</div>";
				});
			});
			html+="</div>";
		});
		$(".main").append(html);
	});
});

 $(function(){ 
	$(".toggle dd").hide(); 
	$(".toggle dt").click(function(){ 
		$(".toggle dd").not($(this).next()).hide(); 
		$(".toggle dt").not($(this).next()).removeClass("current"); 
		$(this).next().slideToggle(100); 
		$(this).toggleClass("current"); 
	}); 
});
 
$(function() {
	$(window).scroll(function(){
		var scrolltop=$(this).scrollTop();		
		if(scrolltop>=700){		
			$("#elevator_item").show();
		}else{
			$("#elevator_item").hide();
		}
	});		
	$("#elevator").click(function(){
		$("html,body").animate({scrollTop: 0}, 500);	
	});		
});
 $(function() {	
	 $("#active1").click(function(){$("html,body").animate({scrollTop:$("#ac1").offset().top}, 800);});
	 $("#active2").click(function(){$("html,body").animate({scrollTop:$("#ac2").offset().top}, 800);});
	 $("#active3").click(function(){$("html,body").animate({scrollTop:$("#ac3").offset().top}, 800);});
	 $("#active4").click(function(){$("html,body").animate({scrollTop:$("#ac4").offset().top}, 800);});
	 $("#active5").click(function(){$("html,body").animate({scrollTop:$("#ac5").offset().top}, 800);});
	 $("#active6").click(function(){$("html,body").animate({scrollTop:$("#ac6").offset().top}, 800);});
	 $("#active7").click(function(){$("html,body").animate({scrollTop:$("#ac7").offset().top}, 800);});
	 $("#active8").click(function(){$("html,body").animate({scrollTop:$("#ac8").offset().top}, 800);});
	 $("#active9").click(function(){$("html,body").animate({scrollTop:$("#ac9").offset().top}, 800);});
	 $("#active10").click(function(){$("html,body").animate({scrollTop:$("#ac10").offset().top}, 800);});
	 $("#active11").click(function(){$("html,body").animate({scrollTop:$("#ac11").offset().top}, 800);});
	 $("#active12").click(function(){$("html,body").animate({scrollTop:$("#ac12").offset().top}, 800);});
	 $("#active13").click(function(){$("html,body").animate({scrollTop:$("#ac13").offset().top}, 800);});
	 $("#active14").click(function(){$("html,body").animate({scrollTop:$("#ac14").offset().top}, 800);});
	 $("#active15").click(function(){$("html,body").animate({scrollTop:$("#ac15").offset().top}, 800);});
	 $("#active16").click(function(){$("html,body").animate({scrollTop:$("#ac16").offset().top}, 800);});
	 $("#active17").click(function(){$("html,body").animate({scrollTop:$("#ac17").offset().top}, 800);});
	 $("#active18").click(function(){$("html,body").animate({scrollTop:$("#ac18").offset().top}, 800);});
	 $("#active19").click(function(){$("html,body").animate({scrollTop:$("#ac19").offset().top}, 800);});
	 $("#active20").click(function(){$("html,body").animate({scrollTop:$("#ac20").offset().top}, 800);});
	 $("#active21").click(function(){$("html,body").animate({scrollTop:$("#ac21").offset().top}, 800);});
	 $("#active22").click(function(){$("html,body").animate({scrollTop:$("#ac22").offset().top}, 800);});
	 $("#active23").click(function(){$("html,body").animate({scrollTop:$("#ac23").offset().top}, 800);});
	 $("#active24").click(function(){$("html,body").animate({scrollTop:$("#ac24").offset().top}, 800);});
	 $("#active25").click(function(){$("html,body").animate({scrollTop:$("#ac25").offset().top}, 800);});
	 $("#active26").click(function(){$("html,body").animate({scrollTop:$("#ac26").offset().top}, 800);});
	 $("#active27").click(function(){$("html,body").animate({scrollTop:$("#ac27").offset().top}, 800);});
	 $("#active28").click(function(){$("html,body").animate({scrollTop:$("#ac28").offset().top}, 800);});
 });
</script>
</head>

<body>
<div class="all">
<!--导航部分-->
	<%@ include file="../visitor/pageheader_top.jsp" %>
	<%@ include file="../visitor/pageheader_centenr.jsp" %>
	<%@ include file="../visitor/pageheader_bottom.jsp" %>
<!--导航部分end-->



<!--main区域 start-->
    <div class="main">
  
<!-- 右边固定的导航start-->
		<div class="you">
			<p class="kslj">快速链接</p>           
			<img src="${pageContext.request.contextPath}/images/hr.png" class="hr" style="width:100%">
			<div class="toggle">
				<dt><a>信息工程学院</a></dt>
				<dd>
					<ul>
			            <a id="active1"><li>计算机应用技术</li></a>
			            <a id="active2"><li>云计算</li></a>
			            <a id="active3"><li>动漫设计与制作</li></a>
			            <a id="active4"><li>电子商务</li></a>
			            <a id="active5"><li>电子信息工程</li></a>
	        		</ul>
					
				</dd>
				
	            <dt><a>管理学院</a></dt>
		        <dd>  
		            <ul>
		                <a id="active6"><li>工商企业管理</li></a>
		                <a id="active7"><li>城市轨道交通运营管理</li></a>
		                <a id="active8"><li>物流管理</li></a>
		                <a id="active9"><li>社会工作</li></a>
		                <a id="active10"><li>旅游英语</li></a>
		            </ul>
		        </dd>
	            <dt><a>商贸学院</a></dt>
	            <dd>
	                <ul>
	                    <a id="active11"><li>应用英语</li></a>
	                    <a id="active12"><li>财务管理</li></a>
	                    <a id="active13"><li>国际经济与贸易</li></a>
	                    <a id="active14"><li>会展策划与管理</li></a>
	                    <a id="active15"><li>市场营销</li></a>
	                    <a id="active16"><li>金融管理</li></a>
	                </ul>
	            </dd>
				<dt><a>机电工程学院</a></dt>
				<dd>
				    <ul>
				        <a id="active17"><li>电气自动化技术</li></a>
				        <a id="active18"><li>模具设计与制造</li></a>
				        <a id="active19"><li>机电一体化技术</li></a>
				        <a id="active20"><li>汽车检测与维修技术</li></a>
				        <a id="active21"><li>汽车技术服务与运营</li></a>
				    </ul>
				</dd>
	            <dt><a>创意与设计学院</a></dt>
	            <dd> 
	                <ul>
	                    <a id="active22"><li>艺术设计(影视动画设计与制作)</li></a>
	                    <a id="active23"><li>艺术设计(广告设计与制作应用)</li></a>
	                    <a id="active24"><li>产品造型设计</li></a>
	                    <a id="active25"><li>环境艺术设计</li></a>
	                </ul>
	            </dd>
	            <dt><a>服装艺术学院</a></dt>
	            <dd>
	                <ul>
	                    <a id="active26"><li>皮具设计</li></a>
	                    <a id="active27"><li>服装设计</li></a>
	                    <a id="active28"><li>音乐表演</li></a>
	                </ul>
	            </dd>
			</div>
		</div>
		<div id="elevator_item">
        <a id="elevator" onclick="return false;" title="回到顶部"></a>
		</div>
<!-- 右边固定的导航end-->
    </div>
<!--main区域  end-->
</div>

</body>
</html>
