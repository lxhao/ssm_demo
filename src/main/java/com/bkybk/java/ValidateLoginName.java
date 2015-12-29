package com.bkybk.java;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bkybk.dao.UserMapper;
//import com.wuliu.dao.LoginDAO;
import com.bkybk.model.User;

public class ValidateLoginName extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserMapper userMapper;
	
		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			response.setContentType("text/html");
//			LoginDAO dao = new LoginDAO();
			boolean flag = false;
			String loginName=request.getParameter("loginName").toString();
			flag = userIsExist(loginName);
//			flag = dao.userIsExist(loginName);
			//TODO 
			if(true == flag)
			{
				response.getWriter().write("true");//��ֵjquery���Խ��յ�  
			}
			else {
				response.getWriter().write("false");
			}
		}

		
		@Override
		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			this.doGet(request, response); 
		}

		public boolean userIsExist(String loginName){
//		 	System.out.println("Enter userIsExist");
//		 	Object object=userMapper.findByName(loginName);
		 	User user=userMapper.findByName(loginName);
		 	if(user.getCname()!=null){
		 		return false;
		 	}
		 	else {
				 return true;
			}
//		 	if(user.length()==0){
//		 		
//		 	}
//			this.dao = new DBConnection();
//			this.cn = this.dao.getConnection();
//	        // ���ָ���û����ѯ�û���Ϣ
//			String sql = "select * from LoginTable where loginName='"+loginName+"'";
//			System.out.println("loginName:"+loginName);
//			try {
//	            // ��ȡPreparedStatement����
//	        	this.ps = this.cn.prepareStatement(sql);
//	            // ���û��������Ը�ֵ
//	           // ps.setString(1, loginId);
//	            // ִ�в�ѯ��ȡ���
//	            rs = this.ps.executeQuery();
//	            // �жϽ���Ƿ���Ч
//	           // System.out.println("rs.next()= "+rs.next());
//	            if(false == rs.next()){
//	                // �����Ч��֤�����û������
//	            	System.out.println("�û������");
//	                return true;
//	            }
//	            // �ͷŴ� ResultSet �������ݿ�� JDBC ��Դ
//	            rs.close();
//	            // �ͷŴ� PreparedStatement �������ݿ�� JDBC ��Դ
//	            ps.close();
//	        } catch (SQLException e) {
//	            e.printStackTrace();
//	        }finally{
//	            // �ر���ݿ�����
//	        	this.dao.closeConnection(cn);
//	        }
//	        System.out.println("�û������");
	    }
//		http://bati99.iteye.com/blog/1337326
}
