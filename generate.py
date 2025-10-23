#!/bin/python3
import subprocess
import concurrent.futures
passwords = ["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","?}zNpk9`YgS-6Tj}FV.+C^Sir-S@>iU6-aq/%fzd","znZuuGg8uTGhCWvufeXcAAsvPsbLeeP5i3wJ4nPff35XhbqvvMiG7iVKk3aR"]
characters=[" ","a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "?", "<", ">", "'", ":", ";", "`", "|",']','[','}','{']
def generatePasswords(password,generatedPasswords,length):
    if(length==1):
        for i in characters:
            generatedPasswords.append(i+password)
            generatedPasswords.append(password+i)
    if(length==2):
        for i in characters:
            for j in characters:
                generatedPasswords.append(i+j+password)
                generatedPasswords.append(password+i+j)
    if(length==3):
        for i in characters:
            for j in characters:
                for k in characters:
                    generatedPasswords.append(i+j+k+password)
                    generatedPasswords.append(password+i+j+k)



def crack(allpasswords):
    for i in range(len(allpasswords)):
        password=allpasswords[i]
        subprocess.run(['ccrypt', '-d', '_310001-320000.tgz.cpt','-K', password])
        subprocess.run(['echo',password])
        print(""+str(i+1)+" of "+str(len(allpasswords)))
def generatePasswordCombination():
    allpasswords=[]
    for password in passwords:
        generatePasswords(password,allpasswords,1)
        generatePasswords(password,allpasswords,2)
        # generatePasswords(password,allpasswords,3)
    return allpasswords

def runDecrypt():
    allpasswords=generatePasswordCombination()
    numberPerChunck=100000
    chunks = [allpasswords[x:x + numberPerChunck] for x in range(0, len(allpasswords), numberPerChunck)]
    # print(chunks)
    # for chunk in chunks:
    #     crack(chunk)
    results=[]
    with concurrent.futures.ProcessPoolExecutor() as executor:
        for chunk in chunks:
            results.append(executor.submit(crack,chunk))


runDecrypt()