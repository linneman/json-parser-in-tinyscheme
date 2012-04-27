# Marshalling and Unmarshalling of the Configuration-Data of a C-Application to a JSON String

Most C-Applications need to read or write internal datastructures to a filesystem. While binary formats are usually the simplest solution there come with several disadvantgeous. File formats often differ between plattforms because of CPU endianess and word size, the internal structure cannot be easily upgraded without loosing backward-compatibility, values are not human readible to name of few.

Originally comming from web application, the [JSON](http://json.org) format seems to be an ideal and leightweight solution to overcome this. It is similar to XML but more compact, easier to conceptualize and simpler to parse and generate. JSON maps the four fundamental data types of numbers and strings and hashes and vectors. The elements of the latter ones can be nested.

The adhere given implemeentation is based on [TinyScheme](http://tinyscheme.sourceforge.net/home.html), a very leightweight scheme interpreter which can be easily embedded in any given C application. For integration of into a C-Application refer to [these examples](https://github.com/linneman/tinyscheme-integration-example) also.

For the implementation adhere it required to have a TinyScheme interpreter installed in your path. The following illustration assume that its named "ts".

### Run

    $ ts start-tiny.scm

Reads the JSON-String from the file "default_params.json" and illustrates reading and writing parameters from/to it.

2012-04-26, Otto Linnemann
