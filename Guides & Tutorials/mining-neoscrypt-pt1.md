# Pool-Mining Neoscrypt Coins - _1070 ver._

 This is a hybrid guide for setting up & configuring a single-gpu NVDIA mining rig. It covers some parts in-depth for new folks, but you can **scan the bold texts** to get the main points & steps.


- [GPU & Overclocking](#gpu-overclocking)
    - [NVIDIA](#for-nvidia---download-install-msi-afterburner)
    - [AMD](#for-other-cards-amd)
- [Setting Up & Launching a Mining Program](#setting-up-launching-a-mining-program)
    - [Downloading the Miner](#downloading-the-miner)
    - [Creating the BAT file](#creating-the-bat-file)
    - [Launching the Miner](#launching-the-miner)
- [Mining Pools - _draft_](#mining-pools---draft)
- [FAQ](#faq)
- [Tips & Suggestions](#tips-suggestions)


### Prereq's

  - Basic understanding of crypto & mining
 -  Wallet installed & encrypted for the currency you're mining 
 - Current Mavis Beacon's typing skills certification (100+ wpm at 100% accuracy)


--- 

## GPU & Overclocking

While you’ll be doing this next part at your own risk, I do suggest giving it a shot because it could mean significant improvements to your hashrate as well as potentially cutting down on power consumption while extending the life expectancy of your hardware.

### For NVIDIA - Download & Install [MSI Afterburner](https://bitcointalk.org/index.php?topic=2565979.0)

With the following settings, I'm getting a 1250-1400kH/s (or more) hashrate. It’s a speed/efficiency that can compete with stock 1070ti’s. It's not perfect, but it's a decent starting point for those with a similar setup. Tweak them at your own discretion, but you might have driver crashes & freezes while your rig is unattended if you go much higher.

**My Hardware:** [EVGA GeForce GTX 1070 - FTW Edition](https://www.google.com/search?q=1070&client=opera&hs=OAB&source=lnms&tbm=shop&sa=X&ved=0ahUKEwiXyLC-m5vZAhXM3YMKHQ8eBVwQ_AUICigB&biw=1812&bih=962)  
**Cooling:** Stock  
**Power Limit:** 90%, but you can get away with 80%  
**Temp Limit:** 80C  
**Core Clock:** +125  
**Memory Clock:** +420  
**Fan Speed:** Auto (but you can customize this to ramp up only when you need it, making it sound like less of a jet-engine)  

Be sure to hit the **CHECKMARK** to confirm & keep the settings!!

![https://i.imgur.com/64yupfL.png](https://i.imgur.com/64yupfL.png)

### For other cards (AMD)

**I don’t have a guide up yet** because I don’t own one myself, but I can get some links together in time to point folks in the right direction if need be.

## Setting Up & Launching a Mining Program

> _Skip this next bit if it ain't yer first rodeo..._ 

### Downloading the Miner

I’ve been using hsrminer with better results than ccminer or excavator (nh). I haven’t run recent tests tho, so I don’t want to drop any specific numbers, but I do think it’s worth giving a try:


**hsrminer** - https://bitcointalk.org/index.php?topic=2565979.0


**Download** hsrminer (or similar) and **extract the .exe** to a folder somewhere. Many put miners in a mining folder on their Desktop.

### Creating the BAT file

You’ll be running the miner through a terminal (command-line), but don’t let that intimidate you! There’s an easy way to send command-line information & arguments with just a few simple keystrokes. Once you have it setup, it'll be really easy to use.

First, **open a plain-text editor** like Notepad or Notepad++ and **create a blank file**. Save that file as <some-file-name>.bat in the same folder you put the miner.


**Paste** this code:

```bat
@echo off

:loop

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_MAX_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_MAX_SINGLE_ALLOC_PERCENT 100

hsrminer_neoscrypt.exe -o ADDRESS:PORT -u WALLET -p c=DIN

timeout /T 10
echo restarting miner...

goto loop
```
**Change ADDRESS & PORT** to pool of your choice (see below).

**Change WALLETADDRESS** to a receiving wallet’s address of the same currency.

**Change the DIN in "c=DIN"** to whatever currency you're mining, unless the pool requests otherwise.

> Alternatively, you can **download an example [HERE](https://github.com/NinjaBunny9000/crypto-resources/tree/master/BAT%20File%20Examples)**.

**Save** the .bat file & **navigate to the folder** it and the miner are saved in. Click & **copy the directory address**.


![coping the directory](https://i.imgur.com/J0jlAvR.png)


### Launching the Miner

Double-click the BAT file.

If the window opens then immediately closes, then **open a terminal** window.  
> _SHORTCUT:_ Press the Windows key or click the Start menu & type "cmd" then click Command Prompt.

![opening terminal](https://i.imgur.com/5Vd2q70.png)

In the terminal, type "cd " then press CTRL+v to **paste the directory location** you just copied then hit enter.

![terminal](https://i.imgur.com/hMEb6Vk.png)

**Type the name of the BAT file**.  
_SHORTCUT:_ Start typing the name of the BAT file you made then press tab to autocomplete

**Press enter to run.** Give it a few minutes then check on the pool's page under "wallet" (using your wallet address you used in the BAT file) to see the status & progress.

_** Another tutorial is coming soon that goes over what you're seeing in the output from the miner for those who haven't previously been exposed to one._

## Mining Pools - _draft_

This part is going to be up to you, but I can confirm that I’ve had success so far on these pools: 

**Dinero** - [BSOD](http://bsod.pw), [Minaderes](https://minadorespool.gq), [LycheeBit](https://www.lycheebit.com), [Masterhash](https://yiimp.masterhash.us/site/mining)

> Always check a coin's official website, Discord channel, or BitcoinTalk post for latest pool information.


> Some pools might get overwhelmed or DDoS'd and crash. **Keep an eye on the pool** you're using to see what its uptime actually is. If your rig is unattended, there’s bits in the BAT file that will relaunch & reconnect if/when it crashes or times out.


## FAQ

*work in progress

---

## Tips & Suggestions
I don’t mind doing more of these if they’re helpin’ folks, so feel free to shoot me ideas or questions: ionspark.io@gmail.com or on [Discord](https://discordapp.com) @NinjaBunny9000#3143

And lastly, **I’m not doing this for compensation!** However, I know I’ve gifted others for contributing similar guides in the past, so here’s some wallet addresses should you find any information useful & are all about that beloved digital karma:

DIN: `DGzQAnCCUL41wirZP7o86dXyVXjiXz8d9Z`  
BTC: `3LbPNhVK3w3AG9HKXAzVGrWHCpjSttczR1`  
ETH: `0xb6B35c68CC47cC23ace8c3E780b8ceE94EeFa2F3`