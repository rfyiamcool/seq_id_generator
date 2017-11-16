# seq_id_generator

Redis TIME指令本身可以返回秒+毫秒+微妙的时间自增组合, 但还是有一定几率会time id重合, 所以加入步长自增. 不仅减少id重合，而且可以分布式多redis实例.


## Usage:

```
redis-cli script load "$(cat gen_id_step.lua)"

redis-cli EVALSHA fa95419da906d06764f13bed5604b94ac3d7370f 1 test 1
```


