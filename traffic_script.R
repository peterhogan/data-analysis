# Names in data:
#[1] "Year"         "CP"           "ONS.GOR.Name" "ONS.LA.Name"  "Road"        
#[6] "RCategory"    "S.Ref.E"      "S.Ref.N"      "A.Junction"   "B.Junction"  
#[11] "LenNet_miles" "PC"           "X2WMV"        "Car"          "Bus"         
#[16] "LGV"          "HGVR2"        "HGVR3"        "HGVR4"        "HGVA3"       
#[21] "HGVA5"        "HGVA6"        "HGV"          "AllMV"       

traffic = read.csv("Traffic-major-roads-miles.csv")

samp_size = 1E4

hants = subset(traffic, traffic$ONS.LA.Name == "Hampshire")
hants_m4 = subset(traffic, traffic$ONS.LA.Name == 'Hampshire')
hants_m4 = subset(hants_m4, traffic$Road == 'M4')

tra2014 = subset(traffic, traffic$Year == 2014)

2014smpl <- tra2014[sample(1:nrow(tra2014), samp_size),]
par(mfrow=c(2,2))
hist(smpl2014$Car)
hist(smpl2014$Bus)
hist(smpl2014$LGV)
hist(smpl2014$HGV)

pairs(smpl2014[c(14,15,16,23,24)])
allsmpl <- traffic[sample(1:nrow(traffic), samp_size),]
