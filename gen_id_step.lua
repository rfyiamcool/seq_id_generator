local incrKey = KEYS[1];
local step = ARGV[1];
local count;

count = tonumber(redis.call('INCRBY', incrKey, step));
--redis.call("set", "kk", count);

if count >= 1000
then
    count = 0
    redis.call('SET', incrKey, 0)
end

local t;
if count < 10
then
    t = string.format("%s%d", "000", count)
end

if count >= 10 and count < 100
then
    t = string.format("%s%d", "00", count)
end


if count >= 100 and count < 1000
then
    t = string.format("%s%d", "0", count)
end

local now = redis.call('TIME');

return {now[1], now[2], t}
