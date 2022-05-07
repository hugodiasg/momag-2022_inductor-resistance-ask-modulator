set encoding utf8
set termoption noenhanced
set title "** sch_path:"
set xlabel "s"
set ylabel "V"
set grid
unset logscale x 
set xrange [0.000000e+00:4.000000e-07]
unset logscale y 
set yrange [3.281481e+00:3.318449e+00]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'gplot1.data' using 1:2 with lines lw 1 title "out0"
