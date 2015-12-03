Board Description
-----------------

board designation           : uSTREAM
board version		    : v2	
board type                  : Lead Free
board size                  : 122.6 mm x 45.8 mm
board thickness             : 1.6 mm +/- 10 %
board material              : IT-180A
number of layers            : 12
 

Top layer copper foil thickness: 17.5 um
Dielectric thickness between Top layer and 2nd, Bottom and 11th layers: 173 um (6.8 mils)
Dielectric between Top layer and 2nd, Bottom and 11th layers relative permittivity (Er): 4.2


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

Solder mask : white, both sides.

Silkscreen : black epoxy ink, both sides.

Electrical test : 100 % netlist.

Boards are to be individually bagged.

Design software used:  KiCad


Controlled Impedance
--------------------
  * 90 Ohm coupled microstrip line (Top, Bottom layers) track width 0.3 mm


Board Stackup
----------------

 Solder Paste Front		: uSTREAM-F_Paste.gtp
 Silk Screen Front		: uSTREAM-F_SilkS.gto
 SolderMask Front		: uSTREAM-F_Mask.gts

1. Front Layer			: uSTREAM-F_Cu.gtl
2. Inner 10			: uSTREAM-Inner10_Cu.gbr 
3. Inner 9			: uSTREAM-Inner9_Cu.gbr
4. Inner 8		        : uSTREAM-Inner8_Cu.gbr
5. Inner 7	                : uSTREAM-Inner7_Cu.gbr
6. Inner 6		        : uSTREAM-Inner6_Cu.gbr
7. Inner 5	                : uSTREAM-Inner5_Cu.gbr
8. Inner 4                      : uSTREAM-Inner4_Cu.gbr
9. Inner 3                      : uSTREAM-Inner3_Cu.gbr
10. Inner 2                     : uSTREAM-Inner2_Cu.gbr
11. Inner 1                     : uSTREAM-Inner1_Cu.gbr																
12. Back Layer			: uSTREAM-B_Cu.gbl

 SolderMask Back		: uSTREAM-B_Mask.gbs
 Silk Screen Back		: uSTREAM-B_SilkS.gbo
 Solder Paste Back      	: uSTREAM-B_Paste.gbp

--------------------------------------------------
 PCB edges           	: uSTREAM-Edge_Cuts.gbr

 Drill map            	: uSTREAM-drl_map.pho
         	 	: uSTREAM-NPTH-drl_map.pho






