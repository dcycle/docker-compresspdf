[![CircleCI](https://circleci.com/gh/dcycle/docker-compresspdf.svg?style=svg)](https://circleci.com/gh/dcycle/docker-compresspdf)

Compress PDF using [GhostScript](https://www.ghostscript.com).

For example:

    docker run --rm \
      -v $(pwd)/example01/test:/app dcycle/compresspdf:2 \
      screen generic_pdf3.pdf generic_pdf3.compressed.pdf

(For higher quality and larger file size you can use "printer" instead of "screen".)

Compressing mulitple pdfs:

    for f in *.pdf; do
      docker run --rm \
        -v $(pwd):/app dcycle/compresspdf:2 \
        screen "$f" "$f".compressed.pdf;
    done

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/compresspdf/).

More resources
-----

* [How to Compress PDF in Linux (GUI & Terminal), May 14, 2020 By Abhishek Prakash, ItsFoss](https://itsfoss.com/compress-pdf-linux/).
