#cd ../lib/iers/gcc && make && cd ../../../app && cd consapp/rnx2rtkp/gcc && make && ./rnx2rtkp -p 0 -f 1 -e -s ',' -y 1 ~/git/tsim/python/RinexSample/Rinex3/OBS.rnx ~/git/tsim/python/RinexSample/Rinex3/NAV.rnx && cd ../../
cd ../lib/iers/gcc && make && cd ../../../app && cd consapp/rnx2rtkp/gcc && make && ./rnx2rtkp -p 0 -f 1 -e -s ',' -y 1 ~/git/tsim/python/RinexSample/Rinex2/OBS.19o ~/git/tsim/python/RinexSample/Rinex2/NAV.19n && cd ../../

