第三周作业地址
https://github.com/huoxiayu/hxy-gateway

由于时间关系目前只实现了一个最简版

改进点：
* netty client的实现有点问题，netty底层是异步的，但是http是同步的，异步转同步以及吞吐量这块还需要改进
* 动态路由功能支持外部化配置和自定义predicate等
* 支持通过spi或依赖注入等方式对网关功能进行扩展，如扩展filter等