import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class load {
    public static WebDriver driver;

    @Before
    public void open() {
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        driver = new ChromeDriver();
    }
    @Test
            public void browser(){

            driver.get("http://opencart.opencartworks.com/themes/so_emarket/layout10");
    }

    @After
    public void close() {

                driver.quit();
    }


}
