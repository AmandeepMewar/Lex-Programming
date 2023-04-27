
# Lex Programming

This repository contains the all the lex programns discussed during class lectures, lab sessions and practicals.

## Description
Lex is a computer program that generates ***lexical analyzers.*** 

## Structure of Lex
A lex program consists of following sections: 

![Structure of a program](https://i0.wp.com/cyanogenmods.org/wp-content/uploads/2020/02/Screenshot-2020-02-20-at-7.22.01-PM.png?resize=416%2C338&ssl=1)


## How to run the code?

To execute, run the following command on terminal

- In the below command, lex compiler runs the <filename>.l program and produces a c program lex.yy.c
```bash
  lex <filename>.l
```
- the C compiler runs lex.yy.c program and produces an object program a.out
```bash
  lex.yy.c
```
- a.out is lexical analyzer that transforms an input stream into a sequence of tokens.
```bash
  ./a.out
```

## License

This repository is ***open source*** and licensed under ***General Public License 3.0***
  
## Contribution

This is an individual project hence contribution is closed. ***PRs*** are not merged.


## Authors

- [@AmandeepMewar](https://github.com/AmandeepMewar)


