git clone https://github.com/text-to-speech/tacotron2.git
pip install torch torchvision
git clone https://github.com/NVIDIA/apex
cd apex/
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .
cd ../tacotron2/
git submodule init; git submodule update
pip install -r requirements.txt
pip uninstall protobuf
pip install --no-binary=protobuf protobuf
py_dir='/content/gdrive/My Drive/Research/data/pytorch-Tacotron/'
outdir=$py_dir'output/'
logdir=$py_dir'log/'
c_path=$outdir'checkpoint_130000'
python train.py --output_directory="$outdir" --log_directory="$logdir" --checkpoint_path="$c_path" --hparams=mel_path="/content/gdrive/My Drive/Research/data/"
