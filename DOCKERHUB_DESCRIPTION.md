# Update DockerHub description

used GitHub action: [`peter-evans/dockerhub-description`](https://github.com/peter-evans/dockerhub-description)

[![publish-dockerhub-description](https://github.com/mrtwnklr/workflow-tests/actions/workflows/publish-dockerhub-description.yaml/badge.svg)](https://github.com/mrtwnklr/workflow-tests/actions/workflows/publish-dockerhub-description.yaml)

## Table of content

- [Table of content](#table-of-content)
  - [Known issues](#known-issues)
- [Test cases](#test-cases)
  - [Relative references](#relative-references)
    - [Anchors (targeting `/blob/`)](#anchors-targeting-blob)
    - [Documents (targeting `/blob/`)](#documents-targeting-blob)
    - [Images (targeting `/raw/`)](#images-targeting-raw)
  - [Absolute references](#absolute-references)
- [Heading with unicode 🌬](#heading-with-unicode-)

### Known issues

1. Relative markdown links in inline-code and code blocks **are also converted**:

   ```markdown
   [link in inline code](#table-of-content)
   ```

   will be converted into

   ```markdown
   [link in inline code](https://github.com/peter-evans/dockerhub-description/blob/main/./README.md#table-of-content)
   ```

2. Links containing square brackets (`]`) in the text fragment **are not converted**:

   ```markdown
   [[link text with square brackets]](#table-of-content)
   ```

3. [Reference-style links/images](https://www.markdownguide.org/basic-syntax/#reference-style-links) **are not converted**.

   ```markdown
   [table-of-content][toc]

   ...

   [toc]: #table-of-content "Table of content"
   ```

## Test cases

Docker test repository: [mrtwnklr/workflow-tests](https://hub.docker.com/r/mrtwnklr/workflow-tests)

### Relative references

#### Anchors (targeting `/blob/`)

- referencing the current document:

  `[#table-of-content](#table-of-content)`

  [#table-of-content](#table-of-content)

- referencing another document:

  `[README.md#table-of-content](README.md#table-of-content)`

  [README.md#table-of-content](README.md#table-of-content)

- anchor with a title:

  `[#table-of-content](#table-of-content "the anchor (a title)")`

  [#table-of-content](#table-of-content "the anchor (a title)")

- anchor with a title and unicode:

  `[#heading-with-unicode-🌬](#heading-with-unicode- "the anchor (a title 🌬)")`

  [#heading-with-unicode-🌬](#heading-with-unicode- "the anchor (a title 🌬)")

- image linking to an anchor of the current document:

  `[![media/image.svg](media/image.svg)](#table-of-content)`

  [![media/image.svg](media/image.svg)](#table-of-content)

- image linking to an anchor of another document:

  `[![media/image.svg](media/image.svg)](README.md#table-of-content)`

  [![media/image.svg](media/image.svg)](README.md#table-of-content)

#### Documents (targeting `/blob/`)

  - text file:

    `[.releaserc.yaml](.releaserc.yaml)`

    [.releaserc.yaml](.releaserc.yaml)

  - pdf file:

    `[media/image.pdf](media/image.pdf)`

    [media/image.pdf](media/image.pdf)

  - tar file:

    `[media/archive.tar](media/archive.tar)`

    [media/archive.tar](media/archive.tar)

  - file with a title:

    `[.releaserc.yaml](.releaserc.yaml "the .releaserc.yaml file (a title)")`

    [.releaserc.yaml](.releaserc.yaml "the .releaserc.yaml file (a title)")

  - file with a title and unicode:

    `[media/image.🌬.png](media/image.🌬.png "the image.🌬.png file (a title)")`

    [media/image.🌬.png](media/image.🌬.png "the image.🌬.png file (a title)")

#### Images (targeting `/raw/`)

- bmp image:

  `![media/image.bmp](media/image.bmp)`

  ![media/image.bmp](media/image.bmp)

- gif image:

  `![media/image.gif](media/image.gif)`

  ![media/image.gif](media/image.gif)

- jpeg image:

  `![media/image.jpeg](media/image.jpeg)`

  ![media/image.jpeg](media/image.jpeg)

- jpg image:

  `![media/image.jpg](media/image.jpg)`

  ![media/image.jpg](media/image.jpg)

- png image:

  `![media/image.png](media/image.png)`

  ![media/image.png](media/image.png)

- svg image:

  `![media/image.svg](media/image.svg)`

  ![media/image.svg](media/image.svg)

- webp image:

  `![media/image.webp](media/image.webp)`

  ![media/image.webp](media/image.webp)

- image without alternate text:

  `![](media/image.svg)`

  ![](media/image.svg)

- image with a title:

  `![media/image.svg](media/image.svg "the image.svg file (a title)")`

  ![media/image.svg](media/image.svg "the image.svg file (a title)")

- image with a relative link:

  `[![media/image.svg](media/image.svg)](media/image.svg)`

  [![media/image.svg](media/image.svg)](media/image.svg)

- image with an absolute link:

  `[![media/image.svg](media/image.svg)](https://github.com)`

  [![media/image.svg](media/image.svg)](https://github.com)

- image with a title, unicode and a relative link:

  `[![media/image.🌬.png](media/image.🌬.png "the image.🌬.png file (a title)")](media/image.🌬.png)`

  [![media/image.🌬.png](media/image.🌬.png "the image.🌬.png file (a title)")](media/image.🌬.png)

### Absolute references

- other GitHub repository:

  `[https://github.com/peter-evans/dockerhub-description](https://github.com/peter-evans/dockerhub-description)`

  [https://github.com/peter-evans/dockerhub-description](https://github.com/peter-evans/dockerhub-description)

- image:

  `![https://github.githubassets.com/favicons/favicon.svg](https://github.githubassets.com/favicons/favicon.svg)`

  ![https://github.githubassets.com/favicons/favicon.svg](https://github.githubassets.com/favicons/favicon.svg)

- image with an absolute link:

  `[![https://github.githubassets.com/favicons/favicon.svg](https://github.githubassets.com/favicons/favicon.svg)](https://github.com)`

  [![https://github.githubassets.com/favicons/favicon.svg](https://github.githubassets.com/favicons/favicon.svg)](https://github.com)

- image with a relative link

  `[![README.md](https://github.githubassets.com/favicons/favicon.svg)](README.md)`

  [![README.md](https://github.githubassets.com/favicons/favicon.svg)](README.md)

- mailto protocol:

  `[mailto:email@example.com](mailto:email@example.com)`

  [mailto:email@example.com](mailto:email@example.com)

- ftp protocol:

  `[ftp://example.com](ftp://example.com)`

  [ftp://example.com](ftp://example.com)

- other protocol-like beginning:

  `[custom://protocol](custom://protocol)`

  [custom://protocol](custom://protocol)

## Heading with unicode 🌬

Content with unicode 🌬
