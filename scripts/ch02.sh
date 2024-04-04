source "../config.sh"   

my_printf "Seq 3"
seq 3

my_printf "Date Sequences "
dseq 5 


my_printf "Head"
cd "$DATA_DIR/ch02"
head -n 3 movies.txt

my_printf "Run fac.py"
./fac.py 5

my_printf "Run: type -a pwd"
type -a pwd

my_printf "Pipeline"
curl -s "https://www.gutenberg.org/files/11/11-0.txt" | grep " CHAPTER"

my_printf "Pipeline complex"
curl -s "https://www.gutenberg.org/files/11/11-0.txt" | grep " CHAPTER" | wc -l


my_printf "redirect"
curl -s "https://www.gutenberg.org/files/11/11-0.txt" | grep " CHAPTER"  > chapters.txt

my_printf "dsutils: dseq "
"$DSUTILS_DIR/dseq" 5

my_printf "Install csvkit: use csvlook"
csvlook "$DATA_DIR/ch07/tips.csv"

my_printf "Pipeline"
seq 0 2 100 | tee event.txt | trim 5 