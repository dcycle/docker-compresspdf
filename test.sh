set -e
docker build -t local-dcycle-compresspdf-image .

docker run --rm -v $(pwd)/example01/test:/app local-dcycle-compresspdf-image screen generic_pdf3.pdf generic_pdf3.compressed.pdf
rm -rf ./example01/test/generic_pdf3.compressed.pdf
