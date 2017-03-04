package com.craftsman.ssm.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.CityBean;

@Controller("citySelectAction")
public class CitySelectAction {
	private List<CityBean> cityList;//上海市区","街道的汇总
	//private List<String> districtList;//上海所有市区
	private String district;//上海市区名称
	private String[] streets;//上海市的街道
	
	public String district() {
		setCityList(initCityBean());
		return "districtjson";
	}

	public String street() {
		for(CityBean cb:cityList){
			if(  cb.getDistrict().equals(district)){
				streets=cb.getStreet();
			}
		}
		return "streetjson";
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	
	private List<CityBean> initCityBean(){
		List<CityBean> listCityBean=new ArrayList<CityBean>();
		String[] districts = { "黄浦区", "静安区","普陀区","杨浦区","南汇区","嘉定区","徐汇区","奉贤区","闸北区","卢湾区","长宁区","松江区","闵行区","青浦区","金山区","宝山区","虹口区","浦东新区","崇明县"  };
		
		String[] huangpu = { "外滩街道", "人民广场街道", "南京东路街道", "金陵东路街道", "半淞园路街道","小东门街道", "老西门街道", "豫园街道" };
		String[] jingan = { "江宁路街道","静安寺街道","南京西路街道","曹家渡街道","石门二路街道" };
		String[] putuo={"长寿路街道","曹杨新村街道","长风新村街道","宜川路街道","甘泉路街道","石泉路街道"};
		String[] yangpu = {"定海路街道","大桥街道","平凉路街道","江浦路街道","控江路街道","殷行街道","长白新村街道","延吉新村街道","五角场街道","四平路街道","新江湾城街道","五角场镇" };
		String[] nanhui={"申港街道","惠南镇","新场镇","大团镇","周浦镇","航头镇","芦潮港镇","康桥镇","宣桥镇","六灶镇","祝桥镇","泥城镇","书院镇","万祥镇","老港镇"};
		String[] jiading = {"嘉定镇街道","新成路街道","真新新村街道","马陆镇","南翔镇","江桥镇","黄渡镇","安亭镇","外冈镇","徐行镇","华亭镇 ","金山区"," 石化街道" };
		String[] xuhui={"湖南路街道","天平路街道","枫林路街道","徐家汇街道","斜土路街道","长桥路街道","漕河泾街道","康健新村街道","虹梅路街道","田林路街道","凌云路街道","龙华街道华泾镇"};
		String[] fengxian = { "南桥镇","庄行镇","金汇镇","柘林镇","青村镇","奉城镇","四团镇","海湾镇 ","南汇区"," 申港街道 "};
		String[] xiabei={"天目西路街道","北站街道","宝山路街道","芷江西路街道","共和新路街道","大宁路街道","彭浦新村街道","临汾路街道彭浦镇"};
		String[] luwan = { "打浦桥街道","淮海中路街道","瑞金二路街道","五里桥街道" };
		String[] changning={"华阳路街道","新华路街道","江苏路街道","天山路街道","周家桥街道","虹桥街道","仙霞新村街道","程家桥街道","北新泾街道","新泾镇"};
		String[] songjiang = { "岳阳街道","中山街道","永丰街道","方松街道九亭镇","泗泾镇","泖港镇","车墩镇","洞泾镇","叶榭镇","新桥镇","石湖荡镇","新浜镇","佘山镇" };
		String[] minhang = { "江川路街道","龙柏街道","古美街道","莘庄镇","七宝镇","浦江镇","梅陇镇","虹桥镇","马桥镇","吴泾镇","华漕镇","颛桥镇 "};
		String[] qingpu={"夏阳街道","盈浦街道","香花桥街道赵巷镇","徐泾镇","华新镇","重固镇","白鹤镇","朱家角镇","练塘镇","金泽镇"};
		String[] jinshan = { "石化街道枫泾镇","朱泾镇","亭林镇","漕泾镇","山阳镇","金山卫镇","张堰镇","廊下镇","吕巷镇" };
		String[] baoshan={"吴淞街道","张庙街道","友谊路街道","庙行镇","罗店镇","大场镇","顾村镇","罗泾镇","杨行镇","月浦镇","淞南镇","高境镇"};
		String[] hongkou = {" 四川北路街道","提篮桥街道","新港路街道","乍浦路街道","欧阳路街道","广中路街道","凉城新村街道","嘉兴路街道","曲阳路街道","江湾镇街道" };
		String[] pudong = { "潍坊新村街道","陆家嘴街道","塘桥街道","周家渡街道","东明路街道","洋泾街道","上钢新村街道","沪东新村街道","金杨新村街道","浦兴路街道","南码头路街道"," 花木街道川沙新镇","合庆镇","曹路镇","高东镇","高桥镇","高行镇","金桥镇","张江镇","唐镇","北蔡镇","三林镇" };
		String[] chongming = { "城桥镇","堡镇镇","新河镇","庙镇镇","竖新镇","向化镇","三星镇","港沿镇","中兴镇","陈家镇","绿华镇","港西镇","建设镇","新村乡","长兴乡","横沙乡" };
		String[][] ss={huangpu,jingan,putuo, yangpu ,nanhui,jiading,  xuhui,fengxian, xiabei,luwan, changning,songjiang,minhang, qingpu, jinshan,  baoshan, hongkou,pudong,chongming};
		
		for(int i = 0; i < districts.length; i++){
			listCityBean.add(new CityBean(districts[i],ss[i]));
		}
		return listCityBean;
	}

	public String[] getStreets() {
		return streets;
	}

	public void setStreets(String[] streets) {
		this.streets = streets;
	}

	public List<CityBean> getCityList() {
		return cityList;
	}

	public void setCityList(List<CityBean> cityList) {
		this.cityList = cityList;
	}
	
	
}
