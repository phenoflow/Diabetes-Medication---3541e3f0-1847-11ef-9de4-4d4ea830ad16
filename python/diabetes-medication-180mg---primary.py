# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"2696001","system":"multilex"},{"code":"11868003","system":"multilex"},{"code":"4101009","system":"multilex"},{"code":"2061009","system":"multilex"},{"code":"2461009","system":"multilex"},{"code":"2973009","system":"multilex"},{"code":"3716001","system":"multilex"},{"code":"1866009","system":"multilex"},{"code":"8752001","system":"multilex"},{"code":"18739001","system":"multilex"},{"code":"11864001","system":"multilex"},{"code":"3504009","system":"multilex"},{"code":"11867003","system":"multilex"},{"code":"2409009","system":"multilex"},{"code":"2110009","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-180mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-180mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-180mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
