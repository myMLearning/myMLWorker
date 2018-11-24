# myMLWorker
Image with ML libraries, without GUI. Based on continuumio/miniconda3.
## Installed
- openblas
- pandas
- scikit-learn
- alpha_vantage
## Backlog
- teapot
  - sklearn-deap
- daskml (parallel processing)
- dash (web UI, like shiny)
## Usage
`docker run -it --rm --name name -e ssh_prv_key="$(cat prvkeyfile)" -e ssh_pub_key="$(cat pubkeyfile.pub)" jirikulik/mymlworker`
