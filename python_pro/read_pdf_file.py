import PyPDF2
import textract

from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
import os


# file name
filename = os.getcwd() + "/" + "MPESA_Statement_20200401_to_20200430_254710594298.pdf"
# file directory# open the file
pdfFileObj = open(filename, 'rb')

pdfReader = PyPDF2.PdfFileReader(pdfFileObj)

# number of pages
num_pages = pdfReader.numPages
count = 0
text = ""

while count < num_pages:
    pageObj = pdfReader.getPage(count)
    count += 1
    text += pageObj.extractText()

if text != "":
    text = text
else:
    text = textract.process()

print(text)
