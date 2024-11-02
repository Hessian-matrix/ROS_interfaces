# This message contains GPS, Galileo and BeiDou ephemeris data

uint32 sat             # satellite number
GnssTimeMsg ttr        # T_trans
GnssTimeMsg toe        # Toe
GnssTimeMsg toc        # Toc
float64 toe_tow        # Toe (s) in week 
uint32 week            # GPS/QZS: gps week, GAL: galileo week
uint32 iode            # IODE
uint32 iodc            # IODC
uint32 health          # SV health (0:ok)
uint32 code            # GPS/QZS: code on L2;  GAL: data source defined as rinex 3.03; BDS: data source (0:unknown,1:B1I,2:B1Q,3:B2I,4:B2Q,5:B3I,6:B3Q);
float64 ura            # User Range Accuracy
float64 A              # SV orbit parameters
float64 e              # SV orbit parameters
float64 i0             # SV orbit parameters
float64 omg            # SV orbit parameters
float64 OMG0           # SV orbit parameters
float64 M0             # SV orbit parameters
float64 delta_n        # SV orbit parameters
float64 OMG_dot        # SV orbit parameters
float64 i_dot          # SV orbit parameters
float64 cuc            # SV orbit parameters
float64 cus            # SV orbit parameters
float64 crc            # SV orbit parameters
float64 crs            # SV orbit parameters
float64 cic            # SV orbit parameters
float64 cis            # SV orbit parameters
float64 af0            # SV clock parameters
float64 af1            # SV clock parameters
float64 af2            # SV clock parameters
float64 tgd0           # group delay parameters
float64 tgd1           # group delay parameters
float64 A_dot          # Adot for CNAV
float64 n_dot          # ndot for CNAV