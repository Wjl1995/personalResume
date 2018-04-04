<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="jsFile/jquery-3.3.1.min.js"></script>
<title>个人简历</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 24px}
.STYLE2 {font-size: 16px}
-->
</style>
</head>

<body>
<center>
<p>制作日期：2018/3/12</p>
<table width="437" height="478" border="1">
  <tr>
    <th width="77" height="41" scope="row">姓名</th>
    <td width="142"><div align="center">吴佳力</div></td>
    <td width="196" rowspan="4">
    	<div title="单击查看大图" align="center"><img id = "faceImg" src="photo/face.jpg" width="140" height="140" />
    </div></td>
  </tr>
  <tr>
    <th height="41" scope="row">年龄</th>
    <td><div align="center">22</div></td>
  </tr>
  <tr>
    <th height="40" scope="row">性别</th>
    <td><div align="center">男</div></td>
  </tr>
  <tr>
    <th scope="row">政治面貌</th>
    <td><div align="center">团员</div></td>
  </tr>
  <tr>
    <th scope="row">籍贯</th>
    <td colspan="2"><div align="center">**省**市**县**村**号</div></td>
  </tr>
  <tr>
    <th scope="row">毕业院校</th>
    <td colspan="2"><div align="center">BUAA</div></td>
  </tr>
  <tr>
    <th scope="row">专业</th>
    <td colspan="2"><div align="center">工业与制造系统工程系（诶~）</div></td>
  </tr>
  <tr>
    <th height="106" scope="row">个人经历</th>
    <td colspan="2"><div align="center">****************************</div></td>
  </tr>
  <tr>
    <th height="92" scope="row">兴趣爱好</th>
    <td colspan="2"><div align="center"><span class="STYLE1">学习</span><span class="STYLE2">！</span></div></td>
  </tr>
</table>
<!-- 放大后的图片 --> 
<div id="outerdiv" style="position:fixed;top:0;left:0px;background:rgba(0,0,0,0.7);z-index:2000;width:100%;height:100%;display:none;">
	<div id="innerdiv" style="position:absolute;width: 100%;height:100%;">
		<img id="bigimg" style="border:5px solid #fff;" src="" />
	</div>
</div>
</center>
</body>

<script type="text/javascript">  
	//图片放大  
	$(function(){  
        $("#faceImg").click(function(){  
            var _this = $(this);		//将当前的pimg元素作为_this传入函数    
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);    
        });
        $("#faceImg").mouseover(function(){  
            this.className = "单击显示大图";
        });
        $("#faceImg").mouseout(function(){  
            this.className = "";
        });
    });    
        
    function imgShow(outerdiv, innerdiv, bigimg, _this){  
    	var src = _this.attr("src");	//获取当前点击的pimg元素中的src属性    
        $(outerdiv).attr('display','block');  
        $(bigimg).attr("src", "photo/mmBig.jpg");		//设置#bigimg元素的src属性    
        $(outerdiv).fadeIn("fast"); 

        $(outerdiv).click(function(){	//再次点击淡出消失弹出层    
            $(this).fadeOut("fast");    
        });    
    }  
</script>


</html>