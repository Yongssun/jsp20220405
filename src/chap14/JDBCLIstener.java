package chap14;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.corba.se.pept.transport.Connection;

/**
 * Application Lifecycle Listener implementation class JDBCLIstener
 *
 */
@WebListener
public class JDBCLIstener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public JDBCLIstener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	//1.연결설정(jdbc 파일 위치)
    	String jdbcInfoFilePath="WEB-INF/props/jdbc.properties";
    		
    }
	
}
