# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"13686001","system":"multilex"},{"code":"13784001","system":"multilex"},{"code":"!3474502","system":"multilex"},{"code":"!3474503","system":"multilex"},{"code":"4841007","system":"multilex"},{"code":"11148001","system":"multilex"},{"code":"1519001","system":"multilex"},{"code":"15578001","system":"multilex"},{"code":"!3471801","system":"multilex"},{"code":"13450001","system":"multilex"},{"code":"!8504807","system":"multilex"},{"code":"14408001","system":"multilex"},{"code":"13685001","system":"multilex"},{"code":"13448001","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rapid-diabetes-medication---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rapid-diabetes-medication---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rapid-diabetes-medication---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
