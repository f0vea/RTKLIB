cd ../lib/iers/gcc && make && cd ../../../app && cd consapp/rnx2rtkp/gcc && make && ./rnx2rtkp -p 0 -f 1 -e -s ',' -y 1 ~/git/tsim/python/RinexSample/Rinex3/data_BREW00USA_R_20212360000_15M_01S_MO ~/git/tsim/python/RinexSample/Rinex3/BRDC00IGS_R_20212360000_01D_MN.rnx && cd ../../

