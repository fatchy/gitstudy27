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
	

<script src="${basePath }ckeditor/ckeditor.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/highcharts-3d.js"></script>
<script src="${basePath }js/Highcharts-4.1.5/js/modules/exporting.js"></script>

<style type="text/css">
#fm {
	margin: 0;
	padding: 10px 30px;
}

.ftitle {
	font-size: 14px;
	font-weight: bold;
	padding: 5px 0;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.fitem {
	margin-bottom: 5px;
}

.fitem label {
	display: inline-block;
	width: 80px;
}

.fitem input {
	width: 160px;
}


</style>
<div id="linechartdlg" class="easyui-dialog"
	style="width: 800px; height: 600px; padding: 10px 20px" closed="true"
	buttons="#linechartdlg-buttons">
	
</div>

<table id="gooddg">
</table>
<div id="dialog">Dialog Content.</div>
<<script type="text/javascript">
function createbarChart(e){
	  $('#linechartdlg').highcharts({
        title: {
            text: '月成交量',
            x: -20 //center
        },
        subtitle: {
            text: '商品成交量走势图',
            x: -20
        },
        xAxis: {
            categories: ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
        },
        yAxis: {
            title: {
                text: '件'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '件'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series:e
    });

}
</script>
<script type="text/javascript">
	var datagrid;
	var rowEditor = undefined;    //用于存放当前要编辑的行
	$(function() {
		datagrid = $("#gooddg").edatagrid({
			url : "BackManageServlet.action?op=listgoods",//查询时加载的URL
			destroyUrl: "BackManageServlet.action?op=deletegoods",
			updateUrl: "BackManageServlet.action?op=updategoods",
			idField : "goodsid", ///标识、会记录我们选中项的id、不一定是id、通常使用主键
			pagination : true,//显示分页
			pageSize : 9,//分页大小
			pageList : [ 5, 9,10, 15, 20, 25, 30, 35, 40, 45, 50 ],//每页的分页数
			fit : true,//自动补全
			fitColumns : true,
			singleSelect:false,
			iconCls : "icon-save",//图标
			rownumbers : true,//行号     最左边显示行号
			title : "商品管理",
			nowrap : false,//表格中的文字可以换行、默认是false、不能换行、这样在文字很多的时候就看不到全部：使用真实的数据去测试
			sortName : 'goodsid',//设置默认排序时的 字段（必须是field中的一个字段）
			sortOrder : 'asc',//是按照升序还是降序排序 但是仅仅添加这两个字段并不会自动排序、这样写的意义就是前台会自动的向后台传递两个参数：sort order,我们可以在后台查询记录的时候进行排序
			columns : [ [ //每个列具体内容
			{
				field : 'ck',
				checkbox:true,
			},{
				field : 'goodsid',
				title : '商品编号',
				width : 100,
				hidden:true,
			}, {
				field : 'goodsimg',
				title : '商品图像',
				width : 50,
				formatter : function(value, rowData, index) {  //value：当前列的值、rowData当前行的值、rowIndex：当前行的索引
						//必须返回一个字符串、用于替换被加formatter的单元格。
						
						return "<img src='images/goods/"+value+"' width='50px' height='50px'/>" ;
				//"<img src='images/userimg/"+value+"'/>";
				//"<img src='images/userimg/1.gif'"
				}
				
			},{
				field : 'goodstitle',
				title : '商品名',
				width : 100,
				
			}, {
				field : 'speciesname',
				title : '商品类别',
				width : 100,
				
			}, {
				field : 'username',
				title : '拥有者',
				width : 100,
				
			},{
				field : 'goodsprice',
				title : '商品价格',
				width : 100,
				formatter : function(value, rowData, index) {  //value：当前列的值、rowData当前行的值、rowIndex：当前行的索引
						//必须返回一个字符串、用于替换被加formatter的单元格。
						if(   value<0){
							return '￥0.0';
						}
						return '￥'+value;

				}
			} , {
				field : 'goodsdetail',
				title : '商品描述',
				width : 100,
			},{
				field : 'goodsstatus',
				title : '商品状态',
				width : 100,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				},
				styler: function(value,row,index){
					if (value ==1){
						return 'background-color:green;';
					}if (value ==0){
						return 'background-color:red;';
					}
					return  'background-color:yellow;';
				},
				formatter : function(value, rowData, index) {  //value：当前列的值、rowData当前行的值、rowIndex：当前行的索引
						//必须返回一个字符串、用于替换被加formatter的单元格。
						if(   value==1){
							return '出售中';
						}
						if(   value==0){
							return '已下架';
						}if(value==3){
							return '交易成功';
						}if(value==4){
							return '首推';
						}
						return '已出售';

				}
				
			}  ] ],
			toolbar : [  {  
                text : '删除',  
                iconCls : 'icon-remove',  
                handler : function() {
                   $('#gooddg').edatagrid('destroyRow')
                }  
            },  '-',{  
                text : '保存',  
                iconCls : 'icon-save',  
                handler : function() {  
                   $('#gooddg').edatagrid('saveRow');  
                }  
            }, '-',{  
                text : '取消编辑',  
                iconCls : 'icon-undo',  
                handler : function() {  
                    $('#gooddg').edatagrid('cancelRow'); 
                } 
             }]  
		});
		$(".datagrid-row").datagrid({
   onContextMenu:function(e,row){
        alert(row.id);
   }
});

	
	});
	
</script>

</body>
</html>



