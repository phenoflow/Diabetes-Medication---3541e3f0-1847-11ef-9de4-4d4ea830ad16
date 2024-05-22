# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"16380001","system":"multilex"},{"code":"1874009","system":"multilex"},{"code":"3018001","system":"multilex"},{"code":"3735001","system":"multilex"},{"code":"14326001","system":"multilex"},{"code":"1506010","system":"multilex"},{"code":"2912001","system":"multilex"},{"code":"245001","system":"multilex"},{"code":"804001","system":"multilex"},{"code":"14325001","system":"multilex"},{"code":"3149009","system":"multilex"},{"code":"2910001","system":"multilex"},{"code":"7016009","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
