sudo su
VERSION=2.4.2
wget https://github.com/singularityware/singularity/releases/download/$VERSION/singularity-$VERSION.tar.gz
tar xvf singularity-$VERSION.tar.gz
cd singularity-$VERSION
./configure --prefix=/usr/local
make
sudo make install
git config --global user.email "lk@g.com"
git config --global user.name "Laxmikant"
singularity build tensorflow_horovod.img Singularity.tensorflow_horovod
git add tensorflow_horovod.img
git commit -m "commit"
git remote add origin https://github.com/lkmokadam/singularity_images.git
git push -u origin master
