@echo off

:loop

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_MAX_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_MAX_SINGLE_ALLOC_PERCENT 100


hsrminer_neoscrypt.exe -o stratum+tcp://us1.minadorespool.gq:4233 -u WALLETADDRESS -p c=DIN


timeout /T 10
echo restarting miner...

goto loop