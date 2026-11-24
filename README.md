[![GitHub Actions](https://github.com/dcycle/docker-compresspdf/actions/workflows/config.yml/badge.svg)](../../actions/workflows/config.yml)

Compress PDF using [GhostScript](https://www.ghostscript.com).

For example, with low-size and low-quality, use screen:

    docker run --rm \
      -v $(pwd)/example01/test:/app dcycle/compresspdf:3 \
      screen generic_pdf3.pdf generic_pdf3.compressed.pdf

For example, with higher size and quality, use printer:

    docker run --rm \
      -v $(pwd)/example01/test:/app dcycle/compresspdf:3 \
      printer generic_pdf3.pdf generic_pdf3.compressed.pdf

Compressing mulitple pdfs:

    for f in *.pdf; do
      docker run --rm \
        -v $(pwd):/app dcycle/compresspdf:3 \
        printer "$f" "$f".compressed.pdf;
    done

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/compresspdf/).

More resources
-----

* [How to Compress PDF in Linux (GUI & Terminal), May 14, 2020 By Abhishek Prakash, ItsFoss](https://itsfoss.com/compress-pdf-linux/).
