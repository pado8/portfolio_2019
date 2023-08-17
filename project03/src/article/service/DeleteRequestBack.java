package article.service;

import java.sql.SQLException;
import java.util.Map;

import guestbook.dao.MessageDao;
import guestbook.model.Message;
import guestbook.service.DeleteMessageService;
import guestbook.service.InvalidPassowrdException;
import guestbook.service.MessageNotFoundException;
import guestbook.service.ServiceException;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;


public class DeleteRequestBack
{
      private int articleId;
      private String password;
 
      public int getArticleId()
      { return articleId; }
      public void setArticleId(int articleId)
      { this.articleId = articleId; }
 
      public String getPassword()
      { return password; }
      public void setPassword(String password)
      { this.password = password; }
}


