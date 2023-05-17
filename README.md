# clean-cv

A modern but conservative CV/resume and cover letter template for LaTeX.

> **Notice: Expect breaking changes between releases, please consider forking if you find this project is of use to you.**

## Previews
| CV/Resume |  Cover Letter |
| :---:|:---: |
| [![CV Preview](https://raw.githubusercontent.com/billyvinning/clean-cv/master/example/cv.png "CV/Resume")](https://raw.githubusercontent.com/billyvinning/clean-cv/master/example/cv.pdf) | [![Cover Letter Preview](https://raw.githubusercontent.com/billyvinning/clean-cv/master/example/coverletter.png)](https://raw.githubusercontent.com/billyvinning/clean-cv/master/example/coverletter.pdf "Cover Letter") | 

## Usage

Edit the files `cv.tex`, `coverletter.tex` and `cv-info.tex`.

## Build

The document is compiled with `lualatex`. To build the document, execute the following at the root of the package directory:

```
make clean && make
```

The output documents, `cv.pdf` and `coverletter.pdf`, will appear at the root of the package directtory.

## Contributing

After making changes to the base package, execute the following to build and update the example documents:

```
make clean && make && make update-examples
```

## License

This project is subject to the MIT license. Please refer to `LICENSE.txt`.
