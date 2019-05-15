package rocketmq;

import com.alibaba.rocketmq.client.producer.DefaultMQProducer;
import com.alibaba.rocketmq.client.producer.SendResult;
import com.alibaba.rocketmq.common.message.Message;
import lombok.SneakyThrows;

public class SendMsg {
    @SneakyThrows
    public static void main(String[] args) {
        DefaultMQProducer producer = new DefaultMQProducer("testBySwh");
        producer.setNamesrvAddr("172.23.20.6:9876");
        producer.start();
        for (int i = 0; i < 100; i++) {
            Message msg = new Message("TopicTest", "TagA", ("hello rocketmq" + i).getBytes());
            SendResult sendResult = producer.send(msg);
        }
        producer.shutdown();
    }
}
