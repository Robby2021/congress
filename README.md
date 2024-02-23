# congress
DisInfo Lab congress data loader

Slightly modified version of the publically available web scraper.

## Setup:

Run the following code in congress_data to load the data:
'''

conda create -n env python=3.7 anaconda
conda activate env
bash
bash ./scripts/load.sh

'''
This will load all of the data for the bills (as a .xml), votes(as a .json), and statutes(.pdf and text) into the data directory orginaized 
by congress number and data type.

Running the same code as above but with update.sh will update the data directory. Govtrack updates their data daily as the databases are updated one to three buisness days from when it is presented in congress.

The original soruce README recommends using venv insted of conda, but I kept getting package not found errors with venv and conda worked fine. 