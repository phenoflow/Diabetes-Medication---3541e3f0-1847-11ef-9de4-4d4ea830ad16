# Matthew Carr, Evan Kontopantelis, Tim Doran, Christine Campbell, Lorraine Lipscombe, Emma Crosbie, Anothony Howell, Iain E Buchan, Andrew G Renehan, 2024.

import sys, csv, re

codes = [{"code":"13728001","system":"multilex"},{"code":"2948001","system":"multilex"},{"code":"11996001","system":"multilex"},{"code":"8299001","system":"multilex"},{"code":"13743001","system":"multilex"},{"code":"2947003","system":"multilex"},{"code":"12818001","system":"multilex"},{"code":"13749001","system":"multilex"},{"code":"13811001","system":"multilex"},{"code":"13746001","system":"multilex"},{"code":"7623003","system":"multilex"},{"code":"1182001","system":"multilex"},{"code":"9316002","system":"multilex"},{"code":"13824001","system":"multilex"},{"code":"7623002","system":"multilex"},{"code":"13820001","system":"multilex"},{"code":"13712001","system":"multilex"},{"code":"5051001","system":"multilex"},{"code":"17541001","system":"multilex"},{"code":"9302001","system":"multilex"},{"code":"10009002","system":"multilex"},{"code":"13816001","system":"multilex"},{"code":"13699001","system":"multilex"},{"code":"9315002","system":"multilex"},{"code":"13826001","system":"multilex"},{"code":"13693001","system":"multilex"},{"code":"13720001","system":"multilex"},{"code":"9984001","system":"multilex"},{"code":"15360001","system":"multilex"},{"code":"12834001","system":"multilex"},{"code":"13815001","system":"multilex"},{"code":"9317002","system":"multilex"},{"code":"13747001","system":"multilex"},{"code":"13970001","system":"multilex"},{"code":"9309001","system":"multilex"},{"code":"8710001","system":"multilex"},{"code":"13823001","system":"multilex"},{"code":"3943001","system":"multilex"},{"code":"9313001","system":"multilex"},{"code":"9316001","system":"multilex"},{"code":"2948002","system":"multilex"},{"code":"1494001","system":"multilex"},{"code":"13680001","system":"multilex"},{"code":"445001","system":"multilex"},{"code":"13694001","system":"multilex"},{"code":"13825001","system":"multilex"},{"code":"9312001","system":"multilex"},{"code":"13806001","system":"multilex"},{"code":"3937001","system":"multilex"},{"code":"13716001","system":"multilex"},{"code":"13805001","system":"multilex"},{"code":"3934001","system":"multilex"},{"code":"3212007","system":"multilex"},{"code":"6860007","system":"multilex"},{"code":"13809001","system":"multilex"},{"code":"3946002","system":"multilex"},{"code":"13810001","system":"multilex"},{"code":"3955007","system":"multilex"},{"code":"9317001","system":"multilex"},{"code":"12817001","system":"multilex"},{"code":"5677001","system":"multilex"},{"code":"9310001","system":"multilex"},{"code":"9308001","system":"multilex"},{"code":"9987001","system":"multilex"},{"code":"3954001","system":"multilex"},{"code":"12032001","system":"multilex"},{"code":"3451007","system":"multilex"},{"code":"13814001","system":"multilex"},{"code":"13698001","system":"multilex"},{"code":"3944001","system":"multilex"},{"code":"18312001","system":"multilex"},{"code":"13724001","system":"multilex"},{"code":"13744001","system":"multilex"},{"code":"13704001","system":"multilex"},{"code":"13729001","system":"multilex"},{"code":"13819001","system":"multilex"},{"code":"3953007","system":"multilex"},{"code":"9315003","system":"multilex"},{"code":"12463001","system":"multilex"},{"code":"11004001","system":"multilex"},{"code":"9302003","system":"multilex"},{"code":"13684001","system":"multilex"},{"code":"13808001","system":"multilex"},{"code":"3949001","system":"multilex"},{"code":"13822001","system":"multilex"},{"code":"13708001","system":"multilex"},{"code":"13717001","system":"multilex"},{"code":"9315001","system":"multilex"},{"code":"13690001","system":"multilex"},{"code":"2947001","system":"multilex"},{"code":"9311001","system":"multilex"},{"code":"10009001","system":"multilex"},{"code":"13817001","system":"multilex"},{"code":"13821001","system":"multilex"},{"code":"13683001","system":"multilex"},{"code":"13688001","system":"multilex"},{"code":"9302002","system":"multilex"},{"code":"13682001","system":"multilex"},{"code":"13723001","system":"multilex"},{"code":"2947002","system":"multilex"},{"code":"8298001","system":"multilex"},{"code":"446001","system":"multilex"},{"code":"13719001","system":"multilex"},{"code":"12833001","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-medication-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-medication-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-medication-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
