package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import java.util.Map;
import java.net.URLEncoder; 
import java.net.URLDecoder; 
import java.io.IOException; 

public class Cookies {
	
    // 쿠키를 <쿠키이름, Cookie 객체> 쌍 형태로 저장하는 맵을 생성한다.
    private Map<String, Cookie> cookieMap = 
        new java.util.HashMap<String, Cookie>();
	
    // Cookies 클래스의 생성자이다. 파라미터로 전달받은 request로부터 Cookie 배열을 읽어와
    public Cookies(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0 ; i < cookies.length ; i++) {
                // 각각의 Cookie 객체를 cookieMap에 저장한다.
                cookieMap.put(cookies[i].getName(), cookies[i]);
            }
        }
    }

    // cookieMap에서 저장한 이름인 Cookie 객체를 구한다. 
    // 지정한 이름의 쿠키가 존재하지 않으면 null 리턴을 리턴
    public Cookie getCookie(String name) {
        return cookieMap.get(name);
    }

    // 도메인을 지정하지 않은 only 쿠키를 추가한다.
    public String getValue(String name) throws IOException {
        Cookie cookie = cookieMap.get(name);
        if (cookie == null) {
            return null;
        }
        return URLDecoder.decode(cookie.getValue(), "utf-8");
    }

    // 지정한 이름의 Cookie가 존재한는 경우 true, 그렇지 않은 경우 false를 리턴
    public boolean exists(String name) {
        return cookieMap.get(name) != null;
    }

    // 이름이 name이고 값이 value인 Cookie 객체를 생성해서 리턴
    public static Cookie createCookie(String name, String value)
    throws IOException {
        return new Cookie(name, URLEncoder.encode(value, "utf-8"));
    }

    // 이름이 nam, 값이 value, 경로가 path, 유효 시간이 maxAge인 Cookie 객체를 생성해서 리턴
    public static Cookie createCookie(String name, String value, String path, int maxAge)
    throws IOException {
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }
	
    // 이름이 nam, 값이 value, 도메인이 domain, 경로가 path, 유효 시간이 maxAge인 
    // Cookie 객체를 생성해서 리턴
    public static Cookie createCookie(String name, String value, String domain,
    String path, int maxAge) throws IOException {
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setDomain(domain);
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }

}