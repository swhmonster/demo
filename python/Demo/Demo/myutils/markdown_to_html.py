import codecs
import sys

import markdown

input_file = codecs.open(sys.argv[1], mode="r", encoding="utf-8")
text = input_file.read()

html = markdown.markdown(text)

output_file = codecs.open(sys.argv[2], mode="w", encoding="utf-8")
output_file.write(html)
