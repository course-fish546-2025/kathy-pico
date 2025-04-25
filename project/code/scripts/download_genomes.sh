ehad 65 

## Download all pro/syn genomes from Berube paper, thanks stephen for making the tarball!!
datadir=~/data/references/genomes/cycog_v6
ls $datadir
# pull genomes from zenodo
wget -O $datadir/cycog6.tar.gz \
 "https://zenodo.org/records/12210994/files/Data_S8-img_data_cycog6.tar.gz?download=1" 
# extract tar file
tar -xvzf $datadir/cycog6.tar.gz -C $datadir
# remove tar file
rm $datadir/cycog6.tar.gz