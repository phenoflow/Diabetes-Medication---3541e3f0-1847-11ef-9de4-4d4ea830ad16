# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"14503005","system":"multilex"},{"code":"9570005","system":"multilex"},{"code":"18840001","system":"multilex"},{"code":"22339005","system":"multilex"},{"code":"10239005","system":"multilex"},{"code":"14111005","system":"multilex"},{"code":"10240005","system":"multilex"},{"code":"8057005","system":"multilex"},{"code":"9569005","system":"multilex"},{"code":"9571005","system":"multilex"},{"code":"9568005","system":"multilex"},{"code":"8056005","system":"multilex"},{"code":"608005","system":"multilex"},{"code":"9555005","system":"multilex"},{"code":"14110005","system":"multilex"},{"code":"1780005","system":"multilex"},{"code":"9567005","system":"multilex"},{"code":"9565005","system":"multilex"},{"code":"9566005","system":"multilex"},{"code":"9564005","system":"multilex"},{"code":"1781005","system":"multilex"},{"code":"14502005","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["single-diabetes-medication---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["single-diabetes-medication---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["single-diabetes-medication---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
