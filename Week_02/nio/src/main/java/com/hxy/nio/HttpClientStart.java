package com.hxy.nio;

import lombok.extern.slf4j.Slf4j;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Slf4j
@Component
public class HttpClientStart implements CommandLineRunner {

    @Override
    public void run(String... args) {
        String url = "http://localhost:8088/api/hello";
        HttpClients.get(url, new Callback() {
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                log.info("resp header: {}, body: {}", response, response.body().string());
            }

            @Override
            public void onFailure(Call call, IOException e) {
                log.error("e: {}", e);
            }
        });
    }

}
