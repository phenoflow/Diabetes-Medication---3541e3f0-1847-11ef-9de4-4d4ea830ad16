# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"3712007","system":"multilex"},{"code":"23007","system":"multilex"},{"code":"5522007","system":"multilex"},{"code":"2400007","system":"multilex"},{"code":"2397007","system":"multilex"},{"code":"3716007","system":"multilex"},{"code":"3708007","system":"multilex"},{"code":"2399007","system":"multilex"},{"code":"4835007","system":"multilex"},{"code":"3704007","system":"multilex"},{"code":"6532007","system":"multilex"},{"code":"6862007","system":"multilex"},{"code":"21007","system":"multilex"},{"code":"13030005","system":"multilex"},{"code":"3714007","system":"multilex"},{"code":"13028005","system":"multilex"},{"code":"3705007","system":"multilex"},{"code":"3707007","system":"multilex"},{"code":"3709007","system":"multilex"},{"code":"4836007","system":"multilex"},{"code":"13026005","system":"multilex"},{"code":"4834007","system":"multilex"},{"code":"3311007","system":"multilex"},{"code":"2398007","system":"multilex"},{"code":"3717007","system":"multilex"},{"code":"5797007","system":"multilex"},{"code":"3715007","system":"multilex"},{"code":"3923007","system":"multilex"},{"code":"3204007","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-injex---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-injex---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-injex---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
