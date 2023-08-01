# DIGI+ Talent 2023

DIGI+ Talent 跨域數位人才加速躍升計畫

## Overview
本課程將以生物資訊的角度切入，對NGS(Illumina based)基因數據分析提供基本概念與實作分析進行全面介紹。主要目標是讓學員具有理論基礎及獨立的基因組分析操作能力，非常適合初學者。

課程中涵蓋關鍵概念和分析策略。 將探索由現代 DNA 定序技術帶來的一系列生物學問題，包括序列比對，遺傳變異鑑定，結構變異分析等。

---
# Course lecture slide

1. [Course overview and Introduction to Linux](https://drive.google.com/drive/folders/13_ElQoSCvJEk_lITBI4wrCJnSl3SYHaP?usp=sharing)
2. [Intruduction to NGS Technologies](https://drive.google.com/drive/folders/134S_LUQintkJip_h2Jemzp9hEB-IOw5h?usp=sharing) 
3. [NGS Analysis Flow](https://drive.google.com/drive/folders/13NQv_78LQRTGqhgr2N4BYEahca4GBWQ9?usp=sharing)
4. [NGS Alignment](https://drive.google.com/drive/folders/12v-b9e-CuwqJB4BMgOZuNR-_p2U9zeRJ?usp=sharing)
5. [NGS Variant Calling (Germline/Somatic)](https://drive.google.com/drive/folders/12uae8UALumiad3Mfcu28-YQgFF-9sK_v?usp=sharing)
6. [NGS SV/CNV Calling](https://drive.google.com/drive/folders/13CBuwXSqaFu1mfrwe6cJIMKzLahdQdrq?usp=sharing)
7. [NGS Variant Annotation for Clinical](https://drive.google.com/drive/folders/13ZsuRIlwu6voQv8_sIRzJLDaz8iATdmB?usp=sharing)

---
# Hands-On

## NCHC resource

* 計畫代號：ACD112105

* 計算資源：ngscourse

* 軟體安裝路徑
  * `/opt/ohpc/Taiwania3/pkg/biology`

* 使用方式：
  * 使用SLURM排程系統來送出工作
 
  * SLURM Job Script (CPU Queue)範例如下：

  ```bash
  #!/usr/bin/sh
  #SBATCH -A ACD111077                         # Account name/project number
  #SBATCH -J digiplus_talent                   # Job name
  #SBATCH -p ngs48G                            # Partition Name 等同PBS裡面的 -q Queue name
  #SBATCH -c 14                                # 使用的數 請參考Queue資源設定 
  #SBATCH --mem=46g                            # 使用的記憶體量 請參考Queue資源設定
  #SBATCH -o bwa_out.log                       # Path to the standard output file 
  #SBATCH -e bwa_err.log                       # Path to the standard error ouput file
  #SBATCH --mail-user=genius.philip@gmail.com  # email
  #SBATCH --mail-type=BEGIN,END                # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL

  echo 'Hello world!'  ##這邊寫入你要執行的指令
  ```


---
# Reference Genome
* Human
  * HG19

    `/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/UCSC/hg19/Sequence/BWAIndex/genome.fa`

  * HG38

    `/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/UCSC/hg38/Sequence/BWAIndex/genome.fa`

# Annotation Reference Genome

* Human

  * HG19
  
  `/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/annovar/hg19`

  * HG38

  `/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/annovar/hg38`


---
# NGS Tools

```bash
/opt/ohpc/Taiwania3/pkg/biology/BWA/BWA_v0.7.17
/opt/ohpc/Taiwania3/pkg/biology/sambamba/sambamba_v0.8.1
/opt/ohpc/Taiwania3/pkg/biology/SAMTOOLS/SAMTOOLS_v1.13/bin
/opt/ohpc/Taiwania3/pkg/biology/GATK/gatk_v4.2.3.0
/opt/ohpc/Taiwania3/pkg/biology/AnnotSV/AnnotSV_v3.0.9/bin
/opt/ohpc/Taiwania3/pkg/biology/ANNOVAR/annovar_20210819
/opt/ohpc/Taiwania3/pkg/biology/FastQC/FastQC_v0.11.9
/opt/ohpc/Taiwania3/pkg/biology/IGV/IGV_v2.10.3
/opt/ohpc/Taiwania3/pkg/biology/VCFtools/vcftools_v0.1.16/bin
```

* [FASTQC 0.11.9](https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc)
* [BWA-0.7.17(r1188)](https://github.com/lh3/bwa)
* [samtools 1.13](https://github.com/samtools/samtools)
* [htslib 1.13](https://github.com/samtools/htslib)
* [bcftools 1.3](https://github.com/samtools/bcftools)
* [sambamba 0.8.0](https://github.com/biod/sambamba)
* [bedtools2 2.30.0](https://github.com/arq5x/bedtools2)
* [GATK 4.2.1.0](https://github.com/broadinstitute/gatk/releases)
* [vcftools 0.1.16](https://github.com/vcftools/vcftools)
* [JAX-CNV 1.1.0](https://github.com/wanpinglee/JAX-CNV)
* [Annovar (2019Oct24)](https://www.openbioinformatics.org/annovar/annovar_download_form.php)
* [AnnotSV v3.0.9 ](https://github.com/lgmgeo/AnnotSV)
* [IGV v2.10.2](https://software.broadinstitute.org/software/igv/download)
* [IGV for web app](https://igv.org/)

---
# Resource

* [Linux for Biologists - Part1](https://biohpc.cornell.edu/lab/doc/linux_workshop_part1.pdf)
* [An introduction to Linux for bioinformatics](https://sites.ualberta.ca/~stothard/downloads/linux_for_bioinformatics.pdf)
* [Broad Institute - genomics public data on Google cloud](https://console.cloud.google.com/storage/browser/genomics-public-data;tab=objects?pli=1&prefix=&forceOnObjectsSortingFiltering=false)
* [Broad Institute - bundle - Mutect2]([shorturl.at/knuN3](https://gatk.broadinstitute.org/hc/en-us/articles/360037593851-Mutect2))
* [GATK tutorial data](https://drive.google.com/drive/folders/1aBcbV_Hlyg0wOOmZDDSBeIc0uw1r3f_w)


---
# Reference

* [Applied Computational Genomics Course at UU](https://bioinformaticsonline.com/bookmarks/view/42468/applied-computational-genomics-course-at-uu-spring-2020)
* [GATK Resource bundle](https://gatk.broadinstitute.org/hc/en-us/articles/360035890811-Resource-bundle)
