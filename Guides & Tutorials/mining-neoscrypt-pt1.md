# Settings for Mining Neoscrypt Coins
_Using a single-gpu 1070 rig (or similar)_

--- 

I’ve been asked a few times how I’ve tweaked my settings to get the 1250-1400kH/s (or more) hashrate I’ve been getting. It’s a speed/efficiency that competes with the 1070ti’s (not to mention, the 1070’s have been known to be more power-efficient than the 1080’s+).

Here’s a quick (and hopefully easy-to-read) overview with what I’ve been doing so far:

## GPU & Overclocking

While you’ll be doing this next part at your own risk, I do suggest giving it a shot. It could mean significant improvements to your hashrate as well as potentially cut down on power consumptions while extending life expectancy of your hardware.

### For NVIDIA - Download & Install [MSI Afterburner](https://bitcointalk.org/index.php?topic=2565979.0)

Here’s the settings I’ve used with success. Tweak them at your own discretion, but you might have driver crashes & freezes while your rig is unattended if you go much higher.

**My Hardware:** [EVGA GeForce GTX 1070 - FTW Edition](https://www.google.com/search?q=1070&client=opera&hs=OAB&source=lnms&tbm=shop&sa=X&ved=0ahUKEwiXyLC-m5vZAhXM3YMKHQ8eBVwQ_AUICigB&biw=1812&bih=962)  
Cooling: Stock  
Power Limit: 90%, but you can get away with 80%  
Temp Limit: 80C  
Core Clock: +125  
Memory Clock: +420  
Fan Speed: Auto (but you can customize this to ramp up only when you need it, making it sound like less of a jet-engine)  

Be sure to hit the CHECKMARK to confirm!

![https://i.imgur.com/64yupfL.png](https://i.imgur.com/64yupfL.png)

For other cards (AMD): I don’t have a guide up because I don’t own one myself, but I can get some links together in time to point folks in the right direction if need be.

## Miner

I’ve been using hsrminer with better results than ccminer or excavator (nh). I haven’t run recent tests tho, so I don’t want to drop any specific numbers, but I do think it’s worth giving a try:


hsrminer - https://bitcointalk.org/index.php?topic=2565979.0


Download hsrminer (or similar) and extract the .exe to a folder somewhere. Many put miners in a mining folder on their Desktop.
Launching & Running
(Skip if this isn’t your first rodeo) You’ll be running the miner through a terminal (command-line), but don’t let that intimidate you! There’s an easy way to send command-line information & arguments with just a few simple keystrokes. 

First, open a plain-text editor like Notepad or Notepad++ and create a blank file. Save that file as <some-file-name>.bat in the same folder you put the miner.


Drop the following code info the file.
Change ADRESS & PORT to pool of your choice (see below).
Change WALLET to a receiving wallet’s address of the same currency.

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

Alternatively, you can download a few examples HERE.

After you've saved the .bat file, navigate to the folder it and the miner are saved in, then click & copy the directory address.


![coping the directory](https://i.imgur.com/J0jlAvR.png)

Press the Windows key or click the Start menu & type "cmd" then click Command Prompt.

![opening terminal](https://i.imgur.com/5Vd2q70.png)

In the terminal, type "cd " then press CTRL+v to paste the directory location you just copied.

Start typing the name of the BAT file you made then press tab to autocomplete.

Press enter to run. Give it a few minutes, then check on the pool's page under "wallet", using your wallet address you used in the BAT file, to see status & progress of your mining rig.

_** Another tutorial is coming soon that goes over what you're seeing in the output from the miner for those who haven't previously been exposed to one._


## Mining Pools - _draft_

This part is going to be up to you, but I can confirm that I’ve had success so far on these pools:

**Dinero** - [Minaderes](https://minadorespool.gq)  



Arcpool had a period where it was overwhelmed and crashed. Sometimes this happens to other pools as well. Keep an eye on the pool your using to see what it’s uptime actually is. If your rig is unattended, there’s bits in the BAT file that will relaunch & reconnect if/when it crashes.

## Tips & Suggestions
I don’t mind doing more of these if they’re helpin’ folks, so feel free to shoot me ideas or questions: ionspark.io@gmail.com or on [Discord](https://discordapp.com) @NinjaBunny9000#3143

And lastly, because I’m not actually doing this for compensation but I know I’ve gifted others for contributing in the past, here’s some wallet addresses (should you find any information useful & are about that karma):



