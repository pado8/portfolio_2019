package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import java.util.Map;
import java.net.URLEncoder; 
import java.net.URLDecoder; 
import java.io.IOException; 

public class Cookies {
	
    // ��Ű�� <��Ű�̸�, Cookie ��ü> �� ���·� �����ϴ� ���� �����Ѵ�.
    private Map<String, Cookie> cookieMap = 
        new java.util.HashMap<String, Cookie>();
	
    // Cookies Ŭ������ �������̴�. �Ķ���ͷ� ���޹��� request�κ��� Cookie �迭�� �о��
    public Cookies(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0 ; i < cookies.length ; i++) {
                // ������ Cookie ��ü�� cookieMap�� �����Ѵ�.
                cookieMap.put(cookies[i].getName(), cookies[i]);
            }
        }
    }

    // cookieMap���� ������ �̸��� Cookie ��ü�� ���Ѵ�. 
    // ������ �̸��� ��Ű�� �������� ������ null ������ ����
    public Cookie getCookie(String name) {
        return cookieMap.get(name);
    }

    // �������� �������� ���� only ��Ű�� �߰��Ѵ�.
    public String getValue(String name) throws IOException {
        Cookie cookie = cookieMap.get(name);
        if (cookie == null) {
            return null;
        }
        return URLDecoder.decode(cookie.getValue(), "utf-8");
    }

    // ������ �̸��� Cookie�� �����Ѵ� ��� true, �׷��� ���� ��� false�� ����
    public boolean exists(String name) {
        return cookieMap.get(name) != null;
    }

    // �̸��� name�̰� ���� value�� Cookie ��ü�� �����ؼ� ����
    public static Cookie createCookie(String name, String value)
    throws IOException {
        return new Cookie(name, URLEncoder.encode(value, "utf-8"));
    }

    // �̸��� nam, ���� value, ��ΰ� path, ��ȿ �ð��� maxAge�� Cookie ��ü�� �����ؼ� ����
    public static Cookie createCookie(String name, String value, String path, int maxAge)
    throws IOException {
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }
	
    // �̸��� nam, ���� value, �������� domain, ��ΰ� path, ��ȿ �ð��� maxAge�� 
    // Cookie ��ü�� �����ؼ� ����
    public static Cookie createCookie(String name, String value, String domain,
    String path, int maxAge) throws IOException {
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setDomain(domain);
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }

}