#!/usr/bin/sh
#SBATCH -A ACD112105        # Account name/project number
#SBATCH -J annosv_job       # Job name
#SBATCH -p ngscourse           # Partition Name 等同PBS裡面的 -q Queue name
#SBATCH -c 2               # 使用的數 請參考Queue資源設定 
#SBATCH --mem=16g           # 使用的記憶體量 請參考Queue資源設定
#SBATCH -o /home/p6elin0111/results/annosv.log          # Path to the standard output file 
#SBATCH -e /home/p6elin0111/results/annosv_err.log          # Path to the standard error ouput file
#SBATCH --mail-user=genius.philip@gmail.com    # email
#SBATCH --mail-type=ALL              # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL


######################
REF_HG19_FASTA="/pkg/biology/reference/Homo_sapiens/GATK/hg19/ucsc.hg19.fasta"
REF_HG38_FASTA="/pkg/biology/reference/Homo_sapiens/GATK/hg38/Homo_sapiens_assembly38.fasta"
OUTPUT_DIR="/home/p6elin0111/results"
PREFIX=""
TMP_DIR="/home/p6elin0111//tmp"
######################
BWA="/opt/ohpc/Taiwania3/pkg/biology/BWA/BWA_v0.7.17/bwa"
GATK4="/opt/ohpc/Taiwania3/pkg/biology/GATK/gatk_v4.2.3.0/gatk"
SAMTOOLS="/opt/ohpc/Taiwania3/pkg/biology/SAMTOOLS/SAMTOOLS_v1.13/bin/samtools"
SAMBAMBA="/opt/ohpc/Taiwania3/pkg/biology/sambamba/sambamba_v0.8.1/sambamba"
ANNOVAR_TAB="/pkg/biology/ANNOVAR/ANNOVAR_20200608/table_annovar.pl"
ANNOTSV=""
######################


$ANNOTSV_PATH -SVinputFile $line -genomeBuild GRCh38 -outputDir $OUTPUT_PATH -outputFile $SAMPLE_NAME