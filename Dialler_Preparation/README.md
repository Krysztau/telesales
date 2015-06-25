This folder contains script that prepares the calling list for the dialler.
###data1.txt, data2.txt
are sample files - lists of customers to be called.
Those lists need to be merged to a single file. Columns' names and order needs to be changed.
All this is accomplished by the script 
###"prepare_dialler_list.R" 
The script also divides the original list by "most called destination".
This particular factor is a good indicator of probability that customer will buy a product. 
###top_data.csv, other_data.csv
are the names of lists ready to upload to dialler. First list yields better results than the other - and differences in number of conversion between called destination are main reason for creation of two separate lists.
