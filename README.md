# TF_ML
This is a repo of transcription factors binding sites project

This pipeline is the part of bioengineering and bioinformatics faculty coursework

The pipeline provides a method to combine single matrix predictions into a unified classifier.

## Before you start

Make sure that you have installed all components:
<ul>
<li>Python 3.6 or upper https://www.python.org/ + (subprocess, matplotlib,pandas,numpy,sklearn (sklearn.externals))
<li>Biopython 1.70 or upper http://biopython.org/
<li>Jupyter 5.4.1 or upper https://jupyter.org/
<li>MACRO-APE http://opera.autosome.ru/
<li>BiasAway https://github.com/wassermanlab/BiasAway
<li>SPRY-SARUS http://autosome.ru/ChIPMunk/
</ul>


## Getting started

### Installation

First of all you have to ```clone``` this directory</br></br>
```git clone https://github.com/Pavel-Kravchenko/TFBS-finder/```</br></br>
Then ```cd``` in TFBS-finder</br></br>
```cd TFBS-finder```</br></br>

Now you are ready to start.
Run the script with your .mfa file for selected TF. 
``` python scanning_tool.py -root `pwd` -mfa [your_mfa_file] -f_name [factor_of_interest] -sarus_h ./sarus/releases/sarus-2.0.1.jar -threshold 0.5 -step 50 -frame 200 ```


## Contact me

Feel free to contact me for any suggestions or critique.

Email: pavel-kravchenk0@yandex.ru 

Site: http://kodomo.fbb.msu.ru/~pavel-kravchenko/index.html 
