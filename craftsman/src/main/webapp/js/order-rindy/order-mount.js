jQuery.extend( {  
    min : 1,  
    reg : function(x) {  
        return new RegExp("^[0-9]*[1-9][0-9]*$").test(x);  
    },  
	
    amount : function(obj, mode) {  
        var x = jQuery(obj).val();  
        if (this.reg(parseInt(x))) {  
            if (mode) {  
                x++;  
            } else {  
                x--;  
            }  
        } else {  
            alert("请输入正确的数量！");  
            jQuery(obj).val(1);  
            jQuery(obj).focus();  
        }  
		var unitprice=$("#unitPrice").text().split("元")[0];
		$("#totalPrice").html("￥"+ x*unitprice);
        return x;  
    },  
    reduce : function(obj) {  
        var x = this.amount(obj, false);  
        if (parseInt(x) >= this.min) {  
            jQuery(obj).val(x);  
        } else {  
        	alert("商品数量最少为:"+this.min );
            jQuery(obj).val(1);  
            jQuery(obj).focus();  
        }  
		var unitprice=$("#unitPrice").text().split("元")[0];
		$("#totalPrice").html("￥"+ x*unitprice);
    },  
    add : function(obj) {  
        var x = this.amount(obj, true);  
        var max = jQuery('#maxAmount').val();  
        jQuery(obj).val(x);  
		var unitprice=$("#unitPrice").text().split("元")[0];
		$("#totalPrice").html("￥"+ x*unitprice);
    },  
    modify : function(obj) {  
        var x = jQuery(obj).val();  
        var max = jQuery('#maxAmount').val();  
        if (!this.reg(parseInt(x))) {  
            jQuery(obj).val(1);  
            jQuery(obj).focus();  
           alert("请输入正确的数量！");  
            return;  
        }  
        var intx = parseInt(x);  
        var intmax = parseInt(max);  
        if (intx < this.min) {  
           alert("商品数量最少:" + this.min  + "!");  
            jQuery(obj).val(this.min);  
            jQuery(obj).focus();  
        } else if (intx > intmax) {  
            alert("您所填写的商品数量超过库存！");  
            jQuery(obj).val(max == 0 ? 1 : max);  
            jQuery(obj).focus();  
        } 
		var unitprice=$("#unitPrice").text().split("元")[0];
		$("#totalPrice").html( "￥"+x*unitprice); 
    }  
}); 
