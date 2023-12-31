package article.service;

import java.util.Map;

public class DeleteRequest {

	private String userId;
	private int articleNumber;
	private String title;
	private String content;

	public DeleteRequest(String userId, int articleNumber, String title, String content) {
		this.userId = userId;
		this.articleNumber = articleNumber;
		this.title = title;
		this.content = content;
	}

	public String getUserId() {
		return userId;
	}

	public int getArticleNumber() {
		return articleNumber;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public void validate(Map<String, Boolean> errors) {
		if (articleNumber == 0) {
			errors.put("articleNumber", Boolean.TRUE);
		}
	}

}
