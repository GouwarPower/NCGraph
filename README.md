# NCGraph
A GAP package for non-commuting graphs of finite groups

Definition of non-commuting graph: Suppose G is finite non-abelian group. The non-commuting graph of G, &Gamma(G), has vertex set G\\Z(G) and two vertices are adjacent if and only if xy != yx (i.e. the do not commute).

For details on how to use the NCGraph Package, run the command `gap makedoc.g` to generate the documentation. You can then view the documentation either in PDF form with `doc/manual.pdf` or HTML form with `doc/chap0.html`

To see an example of the package in action, see my other repository [SmallGroupsNonCommutingGraphs](http://github.com/GouwarPower/SmallGroupsNonCommutingGraphs).

## Installing the package
To install the package, simply clone this repository to your GAP `pkg/` directory. Or if you're like me and keep all of your git repositories in one place, you can symlink the folder containing this repository in the `pkg/` directory with the following line:

`ln -s path/to/repo path/to/pkg/NCGraph`
