git clone https://github.com/Stability-AI/generative-models.git
cd generative-models

# install required packages from pypi
python3 -m venv .pt2
source .pt2/bin/activate
pip3 install -r requirements/pt2.txt

pip3 install .

pip3 install -e git+https://github.com/Stability-AI/datapipelines.git@main#egg=sdata

# Streamlit demo: scripts/demo/sampling.py
# Place weights in checkpoints/
streamlit run scripts/demo/sampling.py --server.port <your_port>

# # packaging
# pip install hatch
# hatch build -t wheel

# # install the wheel 
# pip install dist/*.whl
