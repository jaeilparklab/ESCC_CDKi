library(VennDiagram)
library(RColorBrewer)

setwd('/Users/kko1/OneDrive - Inside MD Anderson/13. KyungPil Ko/Experiment_results/scRNA-seq/2020_nature_comm/pyscenic')

cis_2_1_ <- as.list(c("Tbx20",'Mlx','Foxj1','Snai2','Mef2a','Nfyb','Elk4','Tead4','Sox9','Cux1'))
cis_2_2 <- as.list(c("Rfxap",	"Pou2f3",	"Zfp1",	"Msx2",	"Zbtb7a",	"Nfatc1",	"Snai2",	"Clock",	"Elf2",	"Arntl2"))
cis_2_3 <- as.list(c("Pou3f1",	"Mafb",	"Tbp",	"Tfap2a",	"Zbtb7a",	"Rfx3",	"Nfe2l1",	"Ahr",	"Lmx1a",	"Zfp362"))
cis_2_4 <- as.list(c("Tcf3",	"Gata5",	"Foxa2",	"Tfap2c",	"Gata3",	"Zbtb1",	"Tfap4",	"Snai3",	"Polr3a",	"Nr6a1"))
cis_2_5 <- as.list(c("Sp4",	"Mybl1",	"Mxd4",	"Rbbp5",	"Nfatc1",	"Gabpa",	"Nkx2-9",	"Tbx20",	"Sox15",	"Smarcc2"))

cis_2 <- data.frame(c(cis_2_1_,cis_2_2,cis_2_3,cis_2_4,cis_2_5))
cis_2 <- t(cis_2)
cis_2[,1][duplicated(cis_2[,1])]
cis_2_overlap <- as.list(cis_2[,1][duplicated(cis_2[,1])])
cis_2_overlap <- unique(cis_2_overlap)
cis_2_overlap

cis_4_1_ <- as.list(c('Prrx2',	'Stat1',	'Rara',	'Klf2',	'Cebpb',	'Tead1',	'Elf1',	'Thra',	'Klf3',	'Foxo1'))
cis_4_2 <- as.list(c("Prrx2",	"Tagln2",	"Klf2",	"Stat1",	"Srebf2",	"Stat6",	"Cebpb",	"Klf3",	"Srebf1",	"Irf7"))
cis_4_3 <- as.list(c("Prrx2",	"Tagln2",	"Npdc1",	"Tcf7l1",	"Sp4",	"Stat1",	"Klf2",	"Srebf1",	"Cebpb",	"Thra"))
cis_4_4 <- as.list(c("Prrx2",	"Zbtb7b",	"Stat6",	"Rxra",	"Tagln2",	"Klf2",	"Maz",	"Stat2",	"Cebpb",	"Nr1d2"))
cis_4_5 <- as.list(c("Zbtb7b",	"Stat1",	"Tead1",	"Tagln2",	"Prrx2",	"Klf2",	"Cebpb",	"Srebf1",	"Klf3",	"Sp100"))

cis_4 <- data.frame(c(cis_4_1_,cis_4_2,cis_4_3,cis_4_4,cis_4_5))
cis_4 <- t(cis_4)
cis_4[,1][duplicated(cis_4[,1])]
cis_4_overlap <- as.list(cis_4[,1][duplicated(cis_4[,1])])
cis_4_overlap <- unique(cis_4_overlap)
cis_4_overlap

cis_6_1_ <- as.list(c('Ikzf1',	'Tfap2c',	'Tcf7',	'Etv1',	'Tcf3',	'Tead4',	'Dlx5',	'E2f8',	'Snai2',	'Tfdp1'))
cis_6_2 <- as.list(c("Tfap2a",	"Foxm1",	"Trp63",	"Bcl11a",	"Tfap2c",	"Snai3",	"Ikzf1",	"Snai2",	"Mybl1",	"Nfyb"))
cis_6_3 <- as.list(c("Trp63",	"Ikzf1",	"E2f8",	"Klf7",	"Hdac2",	"Klf5",	"Myf6",	"Sap30",	"Six2",	"Tfdp1"))
cis_6_4 <- as.list(c("Ikzf1",	"Tfap2c",	"Snai3",	"Snai2",	"Tcf3",	"E2f8",	"Tfap2a",	"Dlx3",	"Tfdp1",	"Tcf7"))
cis_6_5 <- as.list(c("Tfap2c",	"Ikzf1",	"Trp63",	"Tcf3",	"Sox15",	"Zbtb14",	"Tbx1",	"Rbbp5",	"Gata3",	"E2f8"))

cis_6 <- data.frame(c(cis_6_1_,cis_6_2,cis_6_3,cis_6_4,cis_6_5))
cis_6 <- t(cis_6)
cis_6[,1][duplicated(cis_6[,1])]
cis_6_overlap <- as.list(cis_6[,1][duplicated(cis_6[,1])])
cis_6_overlap <- unique(cis_6_overlap)
cis_6_overlap

cis_7_1_ <- as.list(c('Snai2',	'Dlx5',	'Zfp217',	'Tfap2c',	'Bcl11a',	'Polr3g',	'Etv4',	'Irf6',	'Grhl3',	'Klf5'))
cis_7_2 <- as.list(c("Snai2",	"Trp63",	"Snai3",	"Bcl11a",	"Klf5",	"Tfap2a",	"Tfap2c",	"Prdm16",	"Poli",	"Klf8"))
cis_7_3 <- as.list(c("Trp63",	"Bcl11a",	"Klf5",	"Snai2",	"Sap30",	"Klf8",	"Sp9",	"Tfap4",	"Max",	"Irf2"))
cis_7_4 <- as.list(c("Snai2",	"Snai3",	"Tfap2c",	"Sox21",	"Dlx3",	"Tfap2a",	"Bcl11a",	"Grhl3",	"Hif1a",	"Klf5"))
cis_7_5 <- as.list(c("Trp63",	"Sox15",	"Tfap2c",	"Rcor1",	"Tead3",	"Tbx2",	"Max",	"Hif1a",	"Hnf1b",	"Etv4"))

cis_7 <- data.frame(c(cis_7_1_,cis_7_2,cis_7_3,cis_7_4,cis_7_5))
cis_7 <- t(cis_7)
cis_7[,1][duplicated(cis_7[,1])]
cis_7_overlap <- as.list(cis_7[,1][duplicated(cis_7[,1])])
cis_7_overlap <- unique(cis_7_overlap)
cis_7_overlap

cis_8_1_ <- as.list(c('Rara',	'Prrx2',	'Nfyc',	'Snapc4',	'Xbp1',	'Zfp108',	'Gli1',	'Gm14418',	'Npdc1',	'Elf1'))
cis_8_2 <- as.list(c("Prrx2",	"Xbp1",	"Hsf4",	"Tbx2",	"Arntl",	"Irf7",	"Tbp",	"Zfp770",	"Cebpb",	"Zfp282"))
cis_8_3 <- as.list(c("Prrx1",	"Prrx2",	"Zfp286",	"Zfp354a",	"Gli1",	"Gm14443",	"Npdc1",	"Xbp1",	"Hsf1",	"Gm14418"))
cis_8_4 <- as.list(c("Prrx2",	"Nfyc",	"Maz",	"Tbx2",	"Xbp1",	"Mlx",	"Zbtb7b",	"Cebpb",	"Gata6",	"Foxp2"))
cis_8_5 <- as.list(c("Zbtb7b",	"Hsf4",	"Maz",	"Prrx2",	"Stat1",	"Xbp1",	"Tbx2",	"Stat5a",	"Zfp513",	"Smad3"))

cis_8 <- data.frame(c(cis_8_1_,cis_8_2,cis_8_3,cis_8_4,cis_8_5))
cis_8 <- t(cis_8)
cis_8[,1][duplicated(cis_8[,1])]
cis_8_overlap <- as.list(cis_8[,1][duplicated(cis_8[,1])])
cis_8_overlap <- unique(cis_8_overlap)
cis_8_overlap

cis_rss_overlap <- data.frame(c(cis_2_overlap,cis_4_overlap,cis_6_overlap,cis_7_overlap,cis_8_overlap))
cis_rss_overlap <- t(cis_rss_overlap)
cis_rss_overlap[,1][duplicated(cis_rss_overlap[,1])]
cis_rss_overlap <- as.list(cis_rss_overlap[,1][duplicated(cis_rss_overlap[,1])])
cis_rss_overlap <- unique(cis_rss_overlap)
cis_rss_overlap
# overlapped TF: Snai2, Tfap2c, Trp63, Snai3, Tfap2a, Prrx2, Cebpb, Zbtb7b


set6 = as.list(org_1)
set7 = as.list(org_2)
set8 = as.list(org_4)


venn.diagram(x=list(set6, set7, set8), 
             category.names = c("Org 1","Org 2","Org 4"), filename = "venndiagram_organoid_clusters.png", output=T, 
             imagetype = "png", height = 2000, width = 2000, resolution = 300, compression = "lzw",
             col = "black",lty = "blank",lwd = 2,
             fill = c("hotpink1",'gold1','mediumturquoise'), alpha = 0.50,
             fontfamily = "sans",fontface = "bold", 
             cat.cex = 0.8, cat.fontfamily = "sans", cat.pos=c(-10,10,50))



list_1 <- as.list(Reduce(intersect, list(set6,set7,set8)))


list_1


list_1 <- as.data.frame(list_1)
write.csv(list_1, "organoid_overlapped_genes_in_PCN_progenitor_cell_cluster_modified.csv")

Reduce(intersect, list(set1,set2,set5))
Reduce(intersect, list(set1,set4,set5))
Reduce(intersect, list(set1,set2,set3))
Reduce(intersect, list(set1,set3,set4))
Reduce(intersect, list(set1,set2,set4))
Reduce(intersect, list(set1,set3,set5))

Reduce(intersect, list(set3,set4,set5))
Reduce(intersect, list(set2,set3,set4))
Reduce(intersect, list(set2,set3,set5))
Reduce(intersect, list(set1,set4))
Reduce(intersect, list(set1,set3))
Reduce(intersect, list(set2,set5))
Reduce(intersect, list(set3,set5))