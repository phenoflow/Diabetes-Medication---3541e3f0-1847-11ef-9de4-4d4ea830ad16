# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"12583005","system":"multilex"},{"code":"13738001","system":"multilex"},{"code":"13730001","system":"multilex"},{"code":"8724003","system":"multilex"},{"code":"13757001","system":"multilex"},{"code":"9901005","system":"multilex"},{"code":"12584005","system":"multilex"},{"code":"8723001","system":"multilex"},{"code":"13681001","system":"multilex"},{"code":"13711001","system":"multilex"},{"code":"9180005","system":"multilex"},{"code":"8724002","system":"multilex"},{"code":"8726001","system":"multilex"},{"code":"11026005","system":"multilex"},{"code":"8726002","system":"multilex"},{"code":"13745001","system":"multilex"},{"code":"8725001","system":"multilex"},{"code":"13736001","system":"multilex"},{"code":"13701001","system":"multilex"},{"code":"12680005","system":"multilex"},{"code":"13922001","system":"multilex"},{"code":"12682005","system":"multilex"},{"code":"9179005","system":"multilex"},{"code":"13725001","system":"multilex"},{"code":"23274005","system":"multilex"},{"code":"8724001","system":"multilex"},{"code":"11025005","system":"multilex"},{"code":"13718001","system":"multilex"},{"code":"18531005","system":"multilex"},{"code":"13748001","system":"multilex"},{"code":"13750001","system":"multilex"},{"code":"18576005","system":"multilex"},{"code":"13695001","system":"multilex"},{"code":"9178005","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-optipen---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-optipen---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-optipen---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
