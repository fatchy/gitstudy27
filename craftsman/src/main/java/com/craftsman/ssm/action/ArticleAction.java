package com.craftsman.ssm.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.ArticlesBean;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.service.ArticleService;
import com.craftsman.ssm.service.UserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("articleAction")
@Scope("prototype")
public class ArticleAction implements ModelDriven<Pagination>,SessionAware {
	private Pagination pagination;
	private ArticlesBean articlesBean;
	private JsonBean jsonBean;
	private Article article;
	private int id;
	private String contentType = "text/html;charset=utf-8";  
	private Map<String,Object> session;
	@Autowired
	private ArticleService articleService;

	public String list() {
		articlesBean = articleService.list(pagination);
		return "articlesBean";
	}

	public String insert() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = articleService.insertOne(article);
		} catch (Exception e) {

			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
		}

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("添加成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("添加失败");
		}
		return "jsonBean";
	}

	public String delete() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = articleService.deleteOne(id);
		} catch (Exception e) {

			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
		}

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("删除成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("删除失败");
		}
		return "jsonBean";
	}

	public String update() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = articleService.updateOne(article);
		} catch (Exception e) {

			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
		}

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("更新成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("更新失败");
		}
		return "jsonBean";
	}
	public String searchArticle() throws IOException{
		
		ActionContext ac = ActionContext.getContext();
		 ServletContext sc = (ServletContext) ac.get(ServletActionContext.SERVLET_CONTEXT);
		 String x = sc.getRealPath("/");
		 System.out.println(x);
		articlesBean=articleService.list(pagination);
		String path=articlesBean.getRows().get(0).getArticletbPath();
		
		 //指定输出内容类型和编码  
        ServletActionContext.getResponse().setContentType(contentType);   
        //获取输出流，然后使用  
        PrintWriter out = ServletActionContext.getResponse().getWriter();  
        try {
        	 String encoding="utf-8";
        	File file=new File(x+"/txt/article/"+path);
        	if(file.isFile() && file.exists()){ //判断文件是否存在
        		InputStreamReader read = new InputStreamReader(
        		new FileInputStream(file),encoding);//考虑到编码格式
        		BufferedReader bufferedReader = new BufferedReader(read);
        		String lineTxt = null;
        		while((lineTxt = bufferedReader.readLine()) != null){
        			out.print(lineTxt);
        			out.flush();
        		}
        		read.close();
        		out.close();
        	}else{
        		System.out.println("找不到指定的文件");
        	}
        } catch (Exception e) {
        	System.out.println("读取文件内容出错");
        	e.printStackTrace();
        }
		return Action.NONE;
	}
	public String getAllArticle(){
		articlesBean=articleService.list(pagination);
		return "getAllArticle";
	}

	public ArticlesBean getArticlesBean() {
		return articlesBean;
	}

	public void setArticlesBean(ArticlesBean articlesBean) {
		this.articlesBean = articlesBean;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}

}
