#
# image-crop.sh, 19 Jun 24
#
# convert is included in the imagemagick installation

crop_file()
{
convert $1 -crop $2 output.jpg
mv output.jpg $1
}

resize_file()
{
convert $1 -resize $2 output.jpg
mv output.jpg $1
}


crop_file intro-1-data-plot.jpg 900x800+0+20
crop_file intro-1-pub-fs-fp.jpg 900x800+0+50
resize_file intro-1-pub-fs-fp.jpg 650x650
crop_file intro-1-NASA_gruhl.jpg 900x600+0+150
crop_file intro-1-nasa-ada-fortran.jpg 900x800+0+50
resize_file intro-1-nasa-ada-fortran.jpg 650x650
crop_file intro-1-herraiz-projects.jpg 900x600+0+150
crop_file intro-1-boxplot-10-cscw.jpg 900x600+0+130
crop_file intro-1-heatmap-hotpower.jpg 900x450+0+250
crop_file intro-1-thereska_sipew-procspeed-memsize.jpg 900x600+0+150

crop_file prob-stats-1-scaling-exp-pow.jpg 900x760+0+60
resize_file prob-stats-1-scaling-exp-pow.jpg 650x650
crop_file prob-stats-1-pop-sample.jpg 900x400+0+350
crop_file prob-stats-1-3np1-dist.jpg 900x640+0+140
crop_file prob-stats-1-3np1.jpg 900x600+0+130
crop_file prob-stats-1-mpi_data_fig.jpg 900x630+0+120
crop_file prob-stats-1-mpi_data_fit.jpg 900x630+0+120
crop_file prob-stats-1-sample-3_mean.jpg 900x570+0+150
crop_file prob-stats-1-two-norm.jpg 900x740+0+60
crop_file prob-stats-1-contam-norm.jpg 900x600+0+150
crop_file prob-stats-1-SW-check.jpg 900x600+0+150
crop_file prob-stats-1-true-false-tree.jpg 900x600+0+150
crop_file prob-stats-1-design-power.jpg 900x530+0+210
crop_file prob-stats-1-power-trade-off.jpg 900x500+0+200
crop_file prob-stats-1-UserBenchmark_Nvidia.jpg 900x600+0+150

crop_file regression-1-Herraiz-BSD-x.jpg 900x600+0+150
crop_file regression-1-Groovy_change-prop2.jpg 900x600+0+150
crop_file regression-1-federal_IT-cost_dur.jpg 900x600+0+150
crop_file regression-1-langpop-corger-nl.jpg 900x500+0+200
crop_file regression-1-acc-sec-experience.jpg 900x600+0+150
crop_file regression-1-lines-per-hour.jpg 900x600+0+150
crop_file regression-1-koomeycomputertrends.jpg 900x400+0+250
crop_file regression-1-li2018_app_number.jpg 900x400+0+250
crop_file regression-1-lines-hour-diagnostic.jpg 900x730+0+90
resize_file regression-1-lines-hour-diagnostic.jpg 750x750
crop_file regression-1-lines-hour-influence.jpg 900x780+0+100
crop_file regression-1-Alemzadeh-Recalls.jpg 900x600+0+150
crop_file regression-1-Alemzadeh-mininf.jpg 900x600+0+150
crop_file regression-1-linux-stable.jpg 900x600+0+150
crop_file regression-1-linux-DAYLOC.jpg 900x500+0+200
crop_file regression-1-SPEC-Mhz.jpg 900x500+0+200
crop_file regression-1-shared-contrib.jpg 900x500+0+200
crop_file regression-1-simula_0a.jpg 900x600+0+150
crop_file regression-1-SPEC-ind-MHz-DDR.jpg 900x750+0+70
crop_file regression-1-SPEC-resid-MHz-DDR.jpg 900x750+0+70
crop_file regression-1-SPEC-quad-MHz-DDR.jpg 900x750+0+70
resize_file regression-1-SPEC-quad-MHz-DDR.jpg 650x650

