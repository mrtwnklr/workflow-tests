# Update DockerHub description

used GitHub action: [`peter-evans/dockerhub-description`](https://github.com/peter-evans/dockerhub-description)

[![publish-dockerhub-description](https://github.com/mrtwnklr/workflow-tests/actions/workflows/publish-dockerhub-description.yaml/badge.svg)](https://github.com/mrtwnklr/workflow-tests/actions/workflows/publish-dockerhub-description.yaml)

## Table of content

- [Table of content](#table-of-content)
- [Test cases](#test-cases)
  - [Relative references](#relative-references)
  - [Absolute references](#absolute-references)

## Test cases

Docker test repository: [mrtwnklr/workflow-tests](https://hub.docker.com/r/mrtwnklr/workflow-tests)

### Relative references

- markdown anchor referencing this document:

  [#table-of-content](#table-of-content)

- markdown anchor referencing another document:

  [README.md#table-of-content](README.md#table-of-content)

- documents:

  - text file:

    [.releaserc.yaml](.releaserc.yaml)

  - pdf file:

    [media/image.pdf](media/image.pdf)

  - tar file:

    [media/archive.tar](media/archive.tar)

- images:

  - bmp image:

    ![media/image.bmp](media/image.bmp)

  - gif image:

    ![media/image.gif](media/image.gif)

  - jpeg image:

    ![media/image.jpeg](media/image.jpeg)

  - jpg image:

    ![media/image.jpg](media/image.jpg)

  - png image:

    ![media/image.png](media/image.png)

  - svg image:

    ![media/image.svg](media/image.svg)

### Absolute references

- other GitHub repository:

  [https://github.com/peter-evans/dockerhub-description](https://github.com/peter-evans/dockerhub-description)

- image:

  ![https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)

- mailto protocol:

  [mailto:email@example.com](mailto:email@example.com)

- ftp protocol:

  [ftp://example.com](ftp://example.com)

- other protocol like beginning:

  [custom://protocol](custom://protocol)
