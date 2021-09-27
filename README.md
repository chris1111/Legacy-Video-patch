# Legacy Video patch: Project for Hackintosh

- For real Mac I recommand to using the dosdude1 Catalina patcher ➤ [the dosdude1 patcher](https://forums.macrumors.com/threads/macos-10-15-catalina-on-unsupported-macs.2183772/)
- Why it's important to keep the two separate because the dosdude1 patcher installs kext and files specifically for Mac's customers
Hackintos only need Graphics kexts and the Clover bootloader does the rest of the work.


### Fix Old Graphics card in macOS Catalina 10.15++ Not working in Big Sur 11 and Monterey 12
- Support Graphics Intel HD 3000.
- Support: GeForce 5xx, 4xx, 2xx, 8600M(GT)/8800M(GT), 9400M/9600M(GT), 320M/330M
- Support AMD/ATI Radeon HD 5xxx and 6xxx series (Without having full QE/CI)
##### NOTE: the only negative thing I can say about AMD/ATI cards is that by recording a video screen the system becomes slow and difficult to use but still usable. With the GeForce and the HD 3000 I do not have this kind of problem and for my part I think that the HD 3000 is the most fluid and fast of the three video cards

##### In conclusion after having had time to do some tests I conclude that AMD/ATI cards work at almost 60% of their full capacity so the full QE/CI is not applied with this patch. Intel HD 3000 and Old GeForce works great

### Latest test Update: 12 July 2021  Catalina 10.15.7 (19H1217)
- See Video Succces Update ➤ [Video update with GeForce 210 Catalina Update 10.15.7(19H1030) to 10.15.7 (19H1217)(https://youtu.be/EeT5DS6BOMo)

- How to Update Catalina 10.15.7 (19H1030) to 10.15.7 (19H1217), simply update macOS then plug the SSD to another mac or Hackintosh, boot to Catalina then reinstall Legacy Video Patch.


![LVP](https://user-images.githubusercontent.com/6248794/100799527-37225b00-33f3-11eb-8623-58ffcf844761.png)

![Capture d’écran, le 2020-12-03 à 06 25 42](https://user-images.githubusercontent.com/6248794/101011171-828e5380-3530-11eb-93b9-aa48596ade38.png)

## Readme for Starting
![Capture 1](https://user-images.githubusercontent.com/6248794/101005612-e6178180-352e-11eb-839f-1f235479551b.png)
## At the end your sytem will Restart
![Capture 2](https://user-images.githubusercontent.com/6248794/101005619-e6178180-352e-11eb-8fc4-3975e701f945.png)

### Latest Update 02 Dec 2020 Legacy Video patch is now an Applications
- New Support AMD/ATI Radeon HD 5xxx and 6xxx series 
- New Video how to 

#### Warnings:
##### 1 :this package replaces system files in /S/L/E and could render your system unbootable.

#### Follow Video ⬇ How to Create the App
[![Modular Image Creation](https://user-images.githubusercontent.com/6248794/100969381-06c8e280-3501-11eb-9e11-ad9d734eff3a.png)](https://youtu.be/h18ie8uTulM)
#### Follow Video ⬇ Install Legacy Video Patch
[![Modular Image Creation](https://user-images.githubusercontent.com/6248794/100969381-06c8e280-3501-11eb-9e11-ad9d734eff3a.png)](https://youtu.be/pP-j-RxOths)


#### Credit:
- Fix/Patch: [dosdude1](https://forums.macrumors.com/members/dosdude1.669685/), [AsentientBot](https://forums.macrumors.com/members/asentientbot.1135186/)
- Tester: chris1111, C.Frio, arqueox, Screenz
- Packager: chris1111
- [Clover Team](https://github.com/CloverHackyColor/CloverBootloader)

### How to Update 10.15.7 (19H15) to ➤ 10.15.7 (19H114)
- How to Update Catalina 10.15.7 (19H15) , simply update macOS then plug the SSD to another mac or Hackintosh, boot to Catalina then reinstall Legacy Video Patch.

See result ➤ [Catalina 10.15.7 (19H114) GeForce 210](https://user-images.githubusercontent.com/6248794/104489413-9ac8a800-559d-11eb-955d-f648eec73e6f.png)

 ------------------------------------------------------------------------

### My result for with a Sapphire Radeon HD 6670 in macOS Catalina 10.15.7
- My result ➤ [Catalina 10.15.7](https://user-images.githubusercontent.com/6248794/100957292-2d2e5400-34e8-11eb-9c11-540086f8c2e2.png) 

### My result for Intel HD 3000 in macOS Catalina 10.15.7 
- My result  ➤ [Catalina 10.15.7 Intel HD 3000](https://user-images.githubusercontent.com/6248794/96388452-de666e00-1176-11eb-913a-578bef22c7fa.png)

 ### [Screenz](https://www.hackintosh-montreal.com/u31) result Intel HD 3000 in macOS Catalina 10.15.7 
 ➤ [Catalina 10.15.7 Intel HD 3000 Laptop HP Probook 4530s](https://i87.servimg.com/u/f87/17/99/48/98/captur16.jpg)
 
 ### LegoLivesMatter' result with MSI Radeon HD 5550 in macOS Catalina 10.15.7 (FakeID used)
 ➤ [Catalina 10.15.7 MSI Radeon HD 5550](https://i.postimg.cc/yd0z1Gdb/Screenshot-2020-12-05-at-09-09-54.png)
 
  ### Bogdis result with Intel HD 3000 in macOS Catalina 10.15.7 (FakeID used)
 ➤ [Catalina 10.15.7 Intel HD 3000](https://user-images.githubusercontent.com/48528615/102701594-d69b7680-4258-11eb-8d5b-6914ecd798a8.png)

 #### More test Graphics: Sapphire Radeon HD 6570, Sapphire ATI Radeon HD 5570, Visiontek ATI HD 5450
➤ [Sapphire Radeon HD 6570](https://user-images.githubusercontent.com/6248794/101048698-d741c680-3550-11eb-8467-23d0a58b6af1.png)

➤ [Sapphire ATI Radeon HD 5570](https://user-images.githubusercontent.com/6248794/101048699-d7da5d00-3550-11eb-9f32-f1f27244279d.png)

➤ [Visiontek ATI HD 5450](https://user-images.githubusercontent.com/6248794/101048691-d6a93000-3550-11eb-9bc6-a43a375e6fbc.png)


### Watch Video test GeForce 210 macOS Catalina 10.15.7
➤ [Video test GeForce 210 macOS Catalina 10.15.7](https://youtu.be/4UGjlWMcCfs)

➤ [My EFI Legacy Video Patch Clover r5127.zip](https://github.com/chris1111/Legacy-Video-patch/files/5720249/EFI.Legacy.Video.Patch.Clover.r5127.zip)

### For USER PC Hackitosh Intel HD 3000⬇︎

➤ [For USER PC Hackitosh Intel HD 3000 See this ➤](https://github.com/chris1111/Legacy-Video-patch/discussions/9)





