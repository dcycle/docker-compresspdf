[![CircleCI](https://circleci.com/gh/dcycle/docker-compresspdf.svg?style=svg)](https://circleci.com/gh/dcycle/docker-compresspdf)

Compress PDF using [cdpf and gs](https://github.com/hkdb/cpdf/blob/master/cpdf).

For example:

    docker run --rm -v $(pwd)/example01/test:/app dcycle/compresspdf:1 screen generic_pdf3.pdf generic_pdf3.compressed.pdf 

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/compresspdf/).

More resources
-----

 * [Compress PDF Files w/ Linux The Easy Way by Jeremy Cheng,
 May 1, 2018, Medium](https://medium.com/@hkdb/compress-pdf-files-w-linux-the-easy-way-5a8502e8c327).
