#!/usr/bin/sh
#SBATCH -A ACD112105        # Account name/project number
#SBATCH -J sambamba_sort_job       # Job name
#SBATCH -p ngscourse           # Partition Name 等同PBS裡面的 -q Queue name
#SBATCH -c 2              # 使用的數 請參考Queue資源設定 
#SBATCH --mem=16g           # 使用的記憶體量 請參考Queue資源設定
#SBATCH -o /home/p6elin0111/results/sambamba_sort_out.log          # Path to the standard output file 
#SBATCH -e /home/p6elin0111/results/sambamba_sort_err.log          # Path to the standard error ouput file
#SBATCH --mail-user=genius.philip@gmail.com    # email
#SBATCH --mail-type=ALL              # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL

######################
FASTQ1="/home/p6elin0111/data/ERR250970_1.filt_fastqc.gz"
FASTQ2="/home/p6elin0111/data/ERR250970_2.filt_fastqc.gz"
REF_HG19_FASTA="/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/UCSC/hg19/Sequence/BWAIndex/genome.fa"
REF_HG38_FASTA="/opt/ohpc/Taiwania3/pkg/biology/reference/Homo_sapiens/UCSC/hg38/Sequence/BWAIndex/genome.fa"
DBSNP_HG19=""
DBSNP_HG38="/home/p6elin0111/data/Homo_sapiens_assembly38.dbsnp138.vcf"
RGID="NA20318"
RGSM="NA20318"
RGLB="Illumina"
RGPL="Illumina"
RGPU="Illumina"
OUTPUT_DIR="/home/p6elin0111/results"
PREFIX="NA20318"
TMP_DIR="/home/p6elin0111/tmp"
######################
BWA="/opt/ohpc/Taiwania3/pkg/biology/BWA/BWA_v0.7.17/bwa"
GATK4="/opt/ohpc/Taiwania3/pkg/biology/GATK/gatk_v4.2.3.0/gatk"
SAMTOOLS="/opt/ohpc/Taiwania3/pkg/biology/SAMTOOLS/SAMTOOLS_v1.13/bin/samtools"
SAMBAMBA="/opt/ohpc/Taiwania3/pkg/biology/sambamba/sambamba_v0.8.1/sambamba"
######################

$SAMBAMBA sort \
-t 3 \
-m 4G \
--tmpdir $TMP_DIR \
$OUTPUT_DIR/$PREFIX.bam \
-o $OUTPUT_DIR/${PREFIX}_sorted.bam