<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="${basePath }easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${basePath }easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${basePath }easyui/demo/demo.css">
	<script type="text/javascript" src="${basePath }easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${basePath }easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${basePath }easyui/jquery.edatagrid.js"></script>
</head>
<body>
	



<script src="${basePath }js/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/highcharts-3d.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/modules/exporting.js"></script>

<div id="piechartdlg" class="easyui-dialog"
	style="width: 800px; height: 600px; padding: 10px 20px" closed="true"
	buttons="#piecharttdlg-buttons">
	
</div>

<table id="sortdg">
	



</table>
<script type="text/javascript">
	function creatChart( e){
	 	$('#piechartdlg').highcharts({
        		chart: {
            	type: 'pie',
            	options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            	}
       	 	},
        title: {
            text: '商品类别分析'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }
        },
        series: [{
            type: 'pie',
            name: '商品份额',
            data: e,
        }]
    });  
		
		}
</script>

<script type="text/javascript">
	var treegrid;
	var rowEditor = undefined;    //用于存放当前要编辑的行
	$(function() {
		treegrid = $("#sortdg").treegrid({
			url : "BackManageServlet.action?op=listallspecies",//查询时加载的URL
			saveUrl: "BackManageServlet.action?op=addspecies",
            updateUrl: "BackManageServlet.action?op=updatespecies",
            destroyUrl: "BackManageServlet.action?op=deletspecies",
			idField : "speciesid", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
			treeField:"speciesname",
			fitColumns : true,
			pagination : true,//显示分页
			pageSize : 20,//分页大小
			pageList : [ 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 ],//每页的分页数
			fit : true,//自动补全
			//fitColumns : true,
			singleSelect:false,
			iconCls : "icon-save",//图标
			
			rownumbers : true,//行号     最左边显示行号
			height:50,
			title : "类别管理",
			nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
			sortName : 'speciesid',//设置默认排序时的 字段（必须是field中的一个字段）
			sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
			columns : [ [ //每个列具体内容
			{
				field : 'speciesid',
				title : '类别编号',
				width : 60,
			
			}, {
				field : 'speciesname',
				title : '类别名',
				width : 200,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				}
				
				
			} ] ],
			toolbar : [  {  
                text : '商品份额统计', 
                handler : function() {
                   
                   $.getJSON("CreateChartServlet.action?op=sortpie",function(e){

							 creatChart( e);
					});
					$('#piechartdlg').dialog('open').dialog('setTitle','饼图');
                   
                }  
             
            } ]  
		});

		
	
	})
</script>
</body>
</html>