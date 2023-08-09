conda config --add channels intel
conda create -y -n PT3 intelpython3_full
conda activate PT3
conda install -y -c conda-forge jupyterlab
conda install -y -c anaconda seaborn pandas tqdm
pip install torch==1.13.0a0+git6c9b55e torchvision==0.14.1a0  intel_extension_for_pytorch==1.13.120+xpu -f https://developer.intel.com/ipex-whl-stable-xpu
pip  install wandb plotext opencv-python albumentations matplotlib  tabulate shapely
python -m ipykernel install --user --name PT3 --display-name "PT3"
python 02_Prepare_Data.py
source /opt/intel/oneapi/setvars.sh
conda activate PT3