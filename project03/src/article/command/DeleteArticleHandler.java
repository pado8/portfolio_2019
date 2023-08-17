package article.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.ArticleData;
import article.service.ArticleNotFoundException;
import article.service.DeleteArticleService;
import article.service.DeleteRequest;
import article.service.PermissionDeniedException;
import article.service.ReadArticleService;
import auth.service.User;
import mvc.command.CommandHandler;

public class DeleteArticleHandler implements CommandHandler {
	private static final String FORM_VIEW = "/sub7/sub7.jsp";

	private ReadArticleService readService = new ReadArticleService();
	private DeleteArticleService deleteService = new DeleteArticleService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private boolean canDelete(User authUser, ArticleData articleData) {
		String writerId = articleData.getArticle().getWriter().getId();
		return authUser.getId().equals(writerId);
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		User authUser = (User) req.getSession().getAttribute("authUser");
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);

		ArticleData articleData = readService.getArticle(no, false);
		if (!canDelete(authUser, articleData)) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
		DeleteRequest delReq = new DeleteRequest(authUser.getId(), no,
				req.getParameter("title"),
				req.getParameter("content"));
		req.setAttribute("delReq", delReq);

		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		delReq.validate(errors);
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			deleteService.delete(delReq);
			return "/check/deleteSuccess.jsp";
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
