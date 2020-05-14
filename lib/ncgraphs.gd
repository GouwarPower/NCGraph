#############################################################################
##
##
#W  ncgraphs.gd                   NCGraph Package                 John Gouwar
##
##  Declaration file for functions of the NCGraph package.
##
##

#############################################################################
##
#F  RemoveCenter( <G> ) . . . . . . . . removes the center of a group
##
##  <#GAPDoc Label="RemoveCenter">
##  <ManSection>
##  <Func Name="RemoveCenter" Arg="group"/>
##
##  <Description>
##  takes a <A> group </A>, removes the central elements, and returns a list
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "RemoveCenter" );

#############################################################################
##
#F  NonCommutingGraph(<G>) . . . . . . .  generate non-commuting graph of <G>
##
##  <#GAPDoc Label="NonCommutingGraph">
##  <ManSection>
##  <Func Name="NonCommutingGraph" Arg="group"/>
##
##  <Description>
##  generates the non-commuting graph of <A> group </A>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "NonCommutingGraph" );

#############################################################################
##
#F  AdjacencyMatrix(<G>) . . . . . . .  generate an adjaceny matrix of <G>
##
##  <#GAPDoc Label="AdjacencyMatrix">
##  <ManSection>
##  <Func Name="AdjacencyMatrix" Arg="graph"/>
##
##  <Description>
##  generates the adjacency matrix of <A> graph </A>
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "AdjacencyMatrix" );

#E  ncgraphs.gd  . . . . . . . . . . . . . . . . . . . . . . . ends here
