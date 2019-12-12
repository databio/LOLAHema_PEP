library(LOLA)
library(GenomicRanges)
library(data.table)
library("simpleCache")

pep_object50 = loadPEPdb_CACHE("/project/shefflab/resources/regions/LOLAHema/LOLAHema_PEP","/LOLAHema_originalBED_config.yaml")

regionSetA = readBed("~/lola_vignette_data/setA_100.bed")
regionSetB = readBed("~/lola_vignette_data/setB_100.bed")
regionSetC = readBed("~/lola_vignette_data/setC_100.bed")
activeDHS = readBed("~/lola_vignette_data/activeDHS_universe.bed")

userSets = GRangesList(regionSetA, regionSetB, regionSetC)

#runLOLA with originalBED LOLAHema (50 files)
locResults_originalBED_PEP = runLOLA(userSets, activeDHS, pep_object50, cores=1)