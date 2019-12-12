library(LOLA)
library(GenomicRanges)
library(data.table)
library("simpleCache")

# use loadPEPdb_CACHE to load 50 files from the LOLAHema_originalBED PEP database
# loadPEPdb_CACHE takes 2 arguments: config folder path and config.yaml name 
pepObject50 = loadPEPdb_CACHE("/project/shefflab/resources/regions/LOLAHema/LOLAHema_PEP","/LOLAHema_originalBED_config.yaml")

# load query region sets from LOLA vignette
regionSetA = readBed("~/lola_vignette_data/setA_100.bed")
regionSetB = readBed("~/lola_vignette_data/setB_100.bed")
regionSetC = readBed("~/lola_vignette_data/setC_100.bed")
activeDHS = readBed("~/lola_vignette_data/activeDHS_universe.bed")

userSets = GRangesList(regionSetA, regionSetB, regionSetC)

# run LOLA with the loaded PEP 
locResultsOriginalBED = runLOLA(userSets, activeDHS, pepObject50, cores=1)

# order results according to meanRnk
locResultsOriginalBED[order(meanRnk, decreasing=FALSE),][1:20,]
