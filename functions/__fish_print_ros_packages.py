import os
from typing import List
from xml.dom.minidom import Element, Text, parse, Document

def find_file(files: List[str], name: str) -> bool:
    for file in files:
        if file == name:
            return True
    return False

def get_name(path: str) -> str:
    dom: Document = parse(path)
    element: Element
    for element in dom.getElementsByTagName("name"):
        text: Text = element.firstChild
        return text.data
        

unique_names = set()
for dirpath, dirnames, filenames in os.walk(os.getcwd()):
    if find_file(filenames, "package.xml"):
        unique_names.add(get_name(dirpath+"/package.xml"))

print("\n".join(unique_names))
