# Smee Live - Demonstration LiveBook Container For Smee

[Smee](https://github.com/Digital-Identity-Labs/smee) is a pragmatic library for handling SAML metadata with Elixir,
Erlang or any other BEAM language. [LiveBook](https://livebook.dev/) is a web application that automates code & data workflows with interactive notebooks.
[Docker](https://www.docker.com/) lets you run applications neatly packaged up with all their requirements.

SmeeLive is a customised Docker container running LiveBook, with all the extra software needed by Smee already installed,
and a set of demonstration notebooks that hopefully show off various features of Smee.

## Why?

* Smee requires Elixir and Erlang to be installed, plus xmlsec1, xmllint and xsltproc, and on M1 Macs one of the other 
requirements (a package called Rambo) can be a little awkward to install. This isn't a big deal compared to setting up
a typical Python application but it's an overhead when demonstrating or casually trying the software. SmeeLive reduces
the installation to one line.
* It makes Smee much, much easier to use on Windows PCs and Macs without Homebrew.
* I use an M1 Mac and this is a neat way to test Smee with ARM64 Linux and quickly run on AMD64 Linux
* LiveBook is really rather cool

## Running SmeeLive

1. You need to have Docker installed and running
2. Then: `docker run -p 127.0.0.1:8080:8080 -p 127.0.0.1:8081:8081 --pull always ghcr.io/digitalidentity/smee_live`
3. You should see a URL printed to the shell: open this in your browser to view Livebook.
4. Click on the 'Open' button and select 'index.livemd' to open the overview notebook.
5. Each block of code in the notebook can be run by clicking on the the little play button above it.

## More information

* LiveBook has a huge amount of documentation inside it
* [The LiveBook website](https://livebook.dev/) has more information on customising LiveBook and using it with Docker
* Documentation for Smee is available inside this Livebook but also at [HexDocs](https://hexdocs.pm/smee)

## Development

A rake script is available for building and publishing this container - you probably won't need this unless you fork
and publish your own version.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Digital-Identity-Labs/smee_live.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to 
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Copyright and License

Notebooks and Dockerfile are Copyright (c) 2023 Digital Identity Ltd, UK, and Apache 2.0 licensed
Smee software is Copyright (c) 2023 Digital Identity Ltd, UK, and Apache 2.0 licensed.

LiveBook is property of [Dashbit](https://dashbit.co/)
