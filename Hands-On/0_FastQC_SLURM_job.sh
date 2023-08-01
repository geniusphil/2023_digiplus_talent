#!/usr/bin/sh
#SBATCH -A ACD112105        # Account name/project number
#SBATCH -J FastQC_job       # Job name
#SBATCH -p ngscourse           # Partition Name 等同PBS裡面的 -q Queue name
#SBATCH -c 2               # 使用的數 請參考Queue資源設定 
#SBATCH --mem=16g           # 使用的記憶體量 請參考Queue資源設定
#SBATCH -o /home/p6elin0111/results/FastQC_out.log          # Path to the standard output file 
#SBATCH -e /home/p6elin0111/results/FastQC_err.log          # Path to the standard error ouput file
#SBATCH --mail-user=genius.philip@gmail.com    # email
#SBATCH --mail-type=ALL              # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL

FASTQC=/opt/ohpc/Taiwania3/pkg/biology/FastQC/FastQC_v0.11.9/fastqc
$FASTQC -o /home/p6elin0111/results /home/p6elin0111/data/ERR250970_*.filt.fastq.gz