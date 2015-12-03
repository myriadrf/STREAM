Board Description
-----------------

board designation           : STREAM
board version		    : v2 r1	
board type                  : Lead Free
board size                  : 130 mm x 145 mm
board thickness             : 1.6 mm +/- 10 %
board material              : IT-180A
number of layers            : 12
 

Top layer copper foil thickness: 17.5 um
Dielectric thickness between Top layer and 2nd layer: 173 um (6.8 mils)
Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2


minimum finished hole size  :  200 um
minimum spacing             :  100 um
minimum track width         :  100 um

drill diameters             : finished hole

plating finish (both sides) : immersion gold
                              0.05-0.10 um of gold over
                              2.50-5.00 um of nickel

Important Notes
---------------

DRCs must be run on Gerber files before building boards.

All through hole vias may be plated shut.

Solder mask : white, both sides, halogen free.

Silkscreen : black epoxy ink, halogen free, both sides.

Electrical test : 100 % netlist.

Boards are to be individually bagged.

Design software used:  KiCad


Controlled Impedance
--------------------

  * 100 Ohm coupled microstrip line (Top layer) track width 0.28 mm


Board Stackup
----------------

 Solder Paste Front		: Stream-F_Paste.gtp
 Silk Screen Front		: Stream-F_SilkS.gto
 SolderMask Front		: Stream-F_Mask.gts

1. Front Layer			: Stream-F_Cu.gtl
2. Inner 1                      : Stream-Inner1_Cu.gbr
3. Inner 2                      : Stream-Inner2_Cu.gbr
4. Inner 3                      : Stream-Inner3_Cu.gbr
5. Inner 4                      : Stream-Inner4_Cu.gbr
6. Inner 5	                : Stream-Inner5_Cu.gbr
7. Inner 6		        : Stream-Inner6_Cu.gbr
8. Inner 7	                : Stream-Inner7_Cu.gbr
9. Inner 8		        : Stream-Inner8_Cu.gbr	
10. Inner 9			: Stream-Inner9_Cu.gbr
11. Inner 10			: Stream-Inner10_Cu.gbr 																
12. Back Layer			: Stream-B_Cu.gbl

 SolderMask Back		: Stream-B_Mask.gbs
 Silk Screen Back		: Stream-B_SilkS.gbo
 Solder Paste Back      	: Stream-B_Paste.gbp

--------------------------------------------------
 PCB edges           	: Stream-Edge_Cuts.gbr
 Drawings		: MYRIAD_RF-Dwgs_User.gbr

 Drill map            	: Stream-drl_map.pho
         	 	: Stream-NPTH-drl_map.pho



Reports folder
--------------
                  
Stream.net
Stream-drl.rpt
Stream.cmp
Stream.rpt



