# Notes for myself
support page <https://www.rtklib.com/rtklib_support.htm>
## RTKLIB 2.4.3
* Make sure you check off 'copy the master branch only' when you fork.
* `git checkout rtklib_2.4.3`
* You need to build RTKLIB/lib/iers before building rnx2rtpk if using 2.4.3

## Basic source code locations from rnx2rtpk:

```
function name (file name)
    function name (file name)
```
    
* rnx2rtpk does not work with IGS data. I tested with Rinex3, the most of which were version 3.03 or 3.04; but, the RTKLIB manual says it supports 3.02. That may be why it does not work. I also tried Rinex2 of IGS file, but it says no obs data.    

```
rnx2rtpk (app/consapprnx2rtkp/rnx2rtkp.c)
    postpos
        rtkpos
            pntpos (pntpos.c)
                satposs (ephemeris.c)
                    time, variable used to contain transmission time (time = time_t, sec = fractional second)
                    satpos
                        ephclk
                            eph2ckl (computes sv clock bias, this clock bias is computed at the time of obs.time - pr/CLIGHT)
                                
                        ephpos (ephemeris.c)
                            eph2pos, the main function that computes, M, E, u, i, r, sat pos, clock relativity correction, etc.
                estpos (pntpos.c)
                    rescode (pntpos.c, computing residual of pseudorange meas)
                        ionocorr (pntpos.c)
                            ionmodel (rtkcmn.c, Klobuchar)
                        tropcorr (pntpos.c)
                raim_fde
                estvel
```






Follow this:

https://rtklibexplorer.wordpress.com/2020/12/18/building-rtklib-code-in-linux/

sudo apt-get update
sudo apt install build-essential
sudo apt-get install libpng-dev
sudo apt-get install qt5-default libqt5serialport5-dev

Instead of using the latest, use the b33. Qt implementation was removed in b34.

git clone https://github.com/tomojitakasu/RTKLIB.git

git checkout rtklib_2.4.3

git checkout tags/v2.4.3-b33

cd RTKLIB/app
qmake
cd ..
qmake
make

If you use the latest (b34), the qmake does not work. If you use b33, qmake seems working, but the build does not work.


JensReimann's RTKLIB

https://github.com/JensReimann/RTKLIB.git

The Qt build is supposed to work with this?? It never worked for me.

### Companies using RTKLIB
emlid, emlid studio supports Linux RTKLIB?

### Console app RTKLIB

Original tomojitakasu's RTKLIB

https://github.com/tomojitakasu/RTKLIB.git

cd RTKLIB/app

chmod u+x makeall.sh

./makeall.sh

cd RTKLIB/app/rnx2rtkp/gcc

./rnx2rtkp -p 0 ~/git/tsim/python/RinexSample/Rinex2/OBS.19o ~/git/tsim/python/RinexSample/Rinex2/NAV.19n

Manual: it seems 2.4.2 manual is the latest although we mostly use 2.4.3



