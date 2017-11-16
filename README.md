# seq_id_generator


## Usage:

```
redis-cli script load "$(cat gen_id_step.lua)"

redis-cli EVALSHA fa95419da906d06764f13bed5604b94ac3d7370f 1 test 1
```


