Elixir Github issues tracker app
================================

What is it?
-----------

This is a command line app built using the Elixir language as I follow through the tutorial inside "Programming Elixir"

The final product is a command line app which can be used as so:

Build
-----

To build the software you will need to have erlang, elixir installed with the mix tool.

Enter the directory and run mix deps.get to download the dependencies

To compile you need to run mix escriptize

This will generate the binary './issues' in the current directory


Tests
------

The tests are located inside the 'test' subfolder

To run them, call 

  mix test



Usage
-----

The main binary is called issues and is located in the main root folder

```
  ./issues <name of github user> <name of repo> <number of issues - default to 4>
```

To show the help simply do:

```
  ./issues -h 
```

How is this different from the book?
------------------------------------

The book used a version of the json dep which did not work on my dev machine. Eventually to allow me
to complete the work I had to redo the following:

** Update the json dep to github.com/devinus/jsonex **: 

This means that there is some changes in the code as compared to the book inside IssueTracker.CLI module. 

The call Jsonex.decode(body) has been changed to JSON.decode(body)

** Update to the table formatting code **:

The table formatting code inside Issues.TableFormatter is also different to allow for the change using a different JSON dep as above

The date time are being returned as a tuple and hence if compiled and run, you will get an error of "Binary.Character not implemeneted ..." as the original code was trying to convert any entry which is not a string using to_binary.


An additional call is needed to catch tuples and if they exist, change them to string using JSON.encode(str)


Credits
-------

All credits go back to pragmatic press for the great programming elixir book.







