#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "hello-world"
label: "Simple hello world tool"

cwlVersion: v1.0

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/

dct:creator:
  "@id": "http://orcid.org/0000-0001-9758-0176"
  foaf:name: Abdelilah Essiari
  foaf:mbox: "mailto:abessiari@gmail.com"

requirements:
- class: DockerRequirement
  dockerPull: aessiari/dockstore-tool-helloworld:latest

inputs:
  template_file:
    type: File
    inputBinding:
      position: 1

  input_file:
    type: File
    inputBinding:
      position: 2

outputs:
  output:
    type: File
    outputBinding:
      glob: "helloworld.txt"

baseCommand: ["bash", "/usr/local/bin/hello_world"]
