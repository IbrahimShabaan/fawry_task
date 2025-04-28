# fawry_task
Q1_Screenshot

<img width="730" alt="Image" src="https://github.com/user-attachments/assets/fcf7715b-90a5-4aca-983a-fc02fe0a8394" />


1. Breakdown of how the script handles arguments and options:
	•	The script checks if --help is given to show usage instructions.
	•	It processes options (-n, -v) using getopts.
	•	After that, it checks if the search string and filename are provided.
	•	It uses grep to search and adjust the output based on the options.
	•	The line shift $((OPTIND - 1)) removes the options from the argument list, so we can use the remaining arguments (search string and filename).

2. Supporting regex or -i/-c/-l options:
	•	To support regex, I would let users use patterns. The script would need to handle these patterns.
	•	For -i (case-insensitive), I could make it default or allow users to toggle it.
	•	For -c (count matches) or -l (list filenames), I would change the grep command to include these options.

3. Hardest part of the script:
	•	The hardest part was understanding getopts and how to use it. Once I practiced and understood how shift $((OPTIND - 1)) works, it got easier.


------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------

Q2_Screenshot
<img width="1244" alt="Image" src="https://github.com/user-attachments/assets/c6ca5fea-6a38-42ae-b2a1-40427af8a5b9" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/bf7bad3a-6f00-4464-95c3-ea6393dfb214" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/a7933a97-7769-4c9a-8bba-8827d10cbd12" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/84d6af82-9c24-4292-b292-e854f055d7de" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/3471e64e-c8ed-41e0-bdb5-52600bab2ba3" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/c9c7a7b3-2b0d-4b7d-a151-fd4da164f778" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/048f3de3-aace-4b96-9a8c-f19b375282e1" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/18f01d01-81b2-42ee-8519-8a82b6f0cb68" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/e2aa8cc7-ce73-4888-907e-3e82619d4673" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/ebd3443c-2fd3-4583-a2aa-8a46f6fc3833" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/1d405726-b04b-4256-a08a-fb546bd161ac" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/993fa65c-bf2a-4da5-b094-3970d9413537" />
<img width="1340" alt="Image" src="https://github.com/user-attachments/assets/8beae738-658d-4898-9ebc-0d39075db20d" />
<img width="1105" alt="Image" src="https://github.com/user-attachments/assets/c6dba97d-75dd-49c2-acc2-e7d34d432673" />



