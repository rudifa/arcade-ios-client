#  arcade ios client



Based on article and tutorial source code:

[GraphQL Using the Apollo Framework: Getting Started](https://www.raywenderlich.com/10886648-graphql-using-the-apollo-framework-getting-started)

[Source code zip](https://koenig-media.raywenderlich.com/uploads/2020/08/GraphQL-Materials.zip)

Morphed by Rudi Farkas @rudifa from tutorial code to work with server `olange/arcade/engine`.

Key Apollo/GraphQL steps:

- edit `Queries.graphql` to define the schema
- add the shell script that generates API.swift
- use methods of the generated `GraphQLQuery` subclass to interact with an Apollo server from olange/arcade/engine.

