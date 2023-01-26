inputFile = open("rata_rata_bonus.txt", "r")
exportFile = open("rata_rata_bonus.dat", "w")
for line in inputFile:
    new_line = line.replace(',', '\t')
    exportFile.write(new_line)

inputFile.close()
exportFile.close()
