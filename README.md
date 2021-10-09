# LOLAHema_PEP
Portable Encapsulated Project (PEP) for the LOLAHema database.  

This [PEP](http://pep.databio.org/en/latest/) is specifically designed to encompass public AML relevant samples. The PEP sample sheet and config files can be accessed directly with the following links:
- [Sample sheet](https://github.com/databio/LOLAHema_PEP/blob/master/LOLAHema_samples.csv)
- [YAML Config file](https://github.com/databio/LOLAHema_PEP/blob/master/LOLAHema_samples_cfg.yaml) 

The .csv sample sheet contains the following attributes for each of the files:  

- **sample_name**
- **file_name**
- **genome**
- **experimental protocol**
- cell type
- tissue
- antibody
- treatment
- data_source
- GSE
- GSM
- description
- file format


The attributes highlighted in bold are used to create derived attributes such as `output_file_path` which points to the location of the BED files produced by the [bedmaker](https://github.com/databio/bedmaker) pipeline (please take a look at the config file). Accordingly, samples in this PEP can be easily processed with other PEP compatible pipelines such as [bedstat](https://github.com/databio/bedstat) and [bedbuncher](https://github.com/databio/bedbuncher). 

There is an additional PEP ([lifOver_PEP](https://github.com/databio/LOLAHema_PEP/tree/master/liftOver_PEPs)) in the repository that contains files that have been liftedOver to different reference genome assemblies (e.g., hg19 to hg38).    
