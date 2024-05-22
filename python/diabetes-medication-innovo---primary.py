# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"13921001","system":"multilex"},{"code":"!3498103","system":"multilex"},{"code":"8708001","system":"multilex"},{"code":"9170005","system":"multilex"},{"code":"8709002","system":"multilex"},{"code":"8706001","system":"multilex"},{"code":"1773001","system":"multilex"},{"code":"8066005","system":"multilex"},{"code":"2676001","system":"multilex"},{"code":"8387001","system":"multilex"},{"code":"8705001","system":"multilex"},{"code":"10917005","system":"multilex"},{"code":"12527001","system":"multilex"},{"code":"443001","system":"multilex"},{"code":"8076003","system":"multilex"},{"code":"9169005","system":"multilex"},{"code":"466001","system":"multilex"},{"code":"8494001","system":"multilex"},{"code":"8076002","system":"multilex"},{"code":"11586001","system":"multilex"},{"code":"8709001","system":"multilex"},{"code":"18835001","system":"multilex"},{"code":"1771003","system":"multilex"},{"code":"3950001","system":"multilex"},{"code":"14732001","system":"multilex"},{"code":"15220001","system":"multilex"},{"code":"855001","system":"multilex"},{"code":"5662001","system":"multilex"},{"code":"10336005","system":"multilex"},{"code":"5680001","system":"multilex"},{"code":"13831001","system":"multilex"},{"code":"9171005","system":"multilex"},{"code":"8232005","system":"multilex"},{"code":"8707003","system":"multilex"},{"code":"8705002","system":"multilex"},{"code":"2677002","system":"multilex"},{"code":"8490001","system":"multilex"},{"code":"598001","system":"multilex"},{"code":"2677001","system":"multilex"},{"code":"7092001","system":"multilex"},{"code":"9830001","system":"multilex"},{"code":"13740001","system":"multilex"},{"code":"13705001","system":"multilex"},{"code":"9831001","system":"multilex"},{"code":"13696001","system":"multilex"},{"code":"8709003","system":"multilex"},{"code":"8707002","system":"multilex"},{"code":"584001","system":"multilex"},{"code":"9491005","system":"multilex"},{"code":"10445001","system":"multilex"},{"code":"1772001","system":"multilex"},{"code":"8707001","system":"multilex"},{"code":"21185005","system":"multilex"},{"code":"13918001","system":"multilex"},{"code":"7091001","system":"multilex"},{"code":"21186005","system":"multilex"},{"code":"1801001","system":"multilex"},{"code":"442001","system":"multilex"},{"code":"8222005","system":"multilex"},{"code":"13739001","system":"multilex"},{"code":"7090001","system":"multilex"},{"code":"8706002","system":"multilex"},{"code":"13687001","system":"multilex"},{"code":"10337005","system":"multilex"},{"code":"4837007","system":"multilex"},{"code":"5798007","system":"multilex"},{"code":"5671001","system":"multilex"},{"code":"12528001","system":"multilex"},{"code":"1771002","system":"multilex"},{"code":"13689001","system":"multilex"},{"code":"13830001","system":"multilex"},{"code":"3951001","system":"multilex"},{"code":"597001","system":"multilex"},{"code":"467001","system":"multilex"},{"code":"8708002","system":"multilex"},{"code":"5563001","system":"multilex"},{"code":"1017001","system":"multilex"},{"code":"1771001","system":"multilex"},{"code":"8704001","system":"multilex"},{"code":"5586001","system":"multilex"},{"code":"17206001","system":"multilex"},{"code":"13919001","system":"multilex"},{"code":"803001","system":"multilex"},{"code":"7093001","system":"multilex"},{"code":"14733001","system":"multilex"},{"code":"7067001","system":"multilex"},{"code":"13691001","system":"multilex"},{"code":"1774001","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-innovo---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-innovo---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-innovo---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
