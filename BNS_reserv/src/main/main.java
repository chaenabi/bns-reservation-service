package main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import com.sun.net.ssl.HttpsURLConnection;

public class main {

	public static void main(String[] args) {
		final String AUTH_HOST = "https://kauth.kakao.com";
		final String tokenRequestUrl = AUTH_HOST + "/oauth/token";

		String CLIENT_ID = "2f679389b3ec2465e93791f4e2b245ce"; // 해당 앱의 REST API KEY 정보. 
		//String REDIRECT_URI = "http://localhost:8080/zero/oauth"; // 해당 앱의 설정된 uri. 개발자 웹사이트의 대쉬보드에서 확인 및 설정 가능
		//String code = "****MkexueeLWd912Ou2CJ0KHUgYtpZIo9owIhAWEghUvfHHf-CUy2LF-g5BMsSN6FreBqwQQjMAAAFK10MI6A"; // 로그인
																												// 과정중
																												// 얻은
																												// authorization
																												// code
																												// 값

		HttpsURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		InputStreamReader isr = null;

		try {
			final String params = String.format("grant_type=authorization_code&client_id=%s&redirect_uri=%s&code=%s",
					CLIENT_ID, REDIRECT_URI, code);

			final URL url = new URL(tokenRequestUrl);

			conn = (HttpsURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			writer = new OutputStreamWriter(conn.getOutputStream());
			writer.write(params);
			writer.flush();

			final int responseCode = conn.getResponseCode();
			System.out.println("\nSending 'POST' request to URL : " + tokenRequestUrl);
			System.out.println("Post parameters : " + params);
			System.out.println("Response Code : " + responseCode);

			isr = new InputStreamReader(conn.getInputStream());
			reader = new BufferedReader(isr);
			final StringBuffer buffer = new StringBuffer();
			String line;
			while ((line = reader.readLine()) != null) {
				buffer.append(line);
			}

			System.out.println(buffer.toString());

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			// clear resources
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception ignore) {
				}
			}
			if (reader != null) {
				try {
					reader.close();
				} catch (Exception ignore) {
				}
			}
			if (isr != null) {
				try {
					isr.close();
				} catch (Exception ignore) {
				}
			}

		}
	}
}
