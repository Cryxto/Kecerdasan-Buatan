inputFile = open("caesarian.txt", "r")
exportFile = open("caesarian_fix.dat", "w")
for line in inputFile:
    new_line = line.replace(',', '\t')
    exportFile.write(new_line)

inputFile.close()
exportFile.close()
