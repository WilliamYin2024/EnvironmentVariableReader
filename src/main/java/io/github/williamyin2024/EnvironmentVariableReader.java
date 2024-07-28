package io.github.williamyin2024;

public class EnvironmentVariableReader {
	public static void main(String[] args) throws InterruptedException {
		String dbUrl = System.getenv("DB_URL");
		String dbUser = System.getenv("DB_USER");
		String dbPassword = System.getenv("DB_PASSWORD");

		System.out.println("DB URL: " + dbUrl);
		System.out.println("DB USER: " + dbUser);
		System.out.println("DB PASSWORD: " + dbPassword);

		Thread.sleep(60 * 1000);
	}
}