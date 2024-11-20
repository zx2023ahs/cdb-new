package org.dromara.job;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.metrics.buffering.BufferingApplicationStartup;

/**
 * 任务调度模块
 *
 *
 */
@EnableDubbo
@SpringBootApplication
public class CdbJobApplication {

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(CdbJobApplication.class);
        application.setApplicationStartup(new BufferingApplicationStartup(2048));
        application.run(args);
        System.out.println("(♥◠‿◠)ﾉﾞ  任务调度模块启动成功   ლ(´ڡ`ლ)ﾞ  ");
    }

}
