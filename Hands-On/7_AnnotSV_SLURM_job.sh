#!/usr/bin/sh
#SBATCH -A ACD112105        # Account name/project number
#SBATCH -J annosv_job       # Job name
#SBATCH -p ngs24G           # Partition Name 等同PBS裡面的 -q Queue name
#SBATCH -c 7               # 使用的數 請參考Queue資源設定 
#SBATCH --mem=23g           # 使用的記憶體量 請參考Queue資源設定
#SBATCH -o annosv.log          # Path to the standard output file 
#SBATCH -e annosv.log          # Path to the standard error ouput file
#SBATCH --mail-user=genius.philip@gmail.com    # email
#SBATCH --mail-type=BEGIN,END              # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL


######################
REF_HG19_FASTA="/pkg/biology/reference/Homo_sapiens/GATK/hg19/ucsc.hg19.fasta"
REF_HG38_FASTA="/pkg/biology/reference/Homo_sapiens/GATK/hg38/Homo_sapiens_assembly38.fasta"
OUTPUT_DIR="/work1/ACD109058/results"
PREFIX="NA12878_MOD"
TMP_DIR="/home/u0916896777/ACD109058/temp"
######################
BWA="/pkg/biology/BWA/BWA_v0.7.17/bwa"
GATK4="/pkg/biology/GATK/GATK_v4.1.8.0/gatk"
SAMTOOLS="/pkg/biology/SAMtools/SAMtools_v1.9/bin/samtools"
SAMBAMBA="/pkg/biology/sambamba/sambamba_v0.7.1/sambamba"
ANNOVAR_TAB="/pkg/biology/ANNOVAR/ANNOVAR_20200608/table_annovar.pl"
ANNOTSV=""
######################


$ANNOTSV_PATH -SVinputFile $line -genomeBuild GRCh38 -outputDir $OUTPUT_PATH -outputFile $SAMPLE_NAME