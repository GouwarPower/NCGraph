#############################################################################
##
#W  ncgraphs.gi                NCGraph Package                    John Gouwar
##
##  Installation file for functions of the NCGraph package.
##
##

#############################################################################
##
#F  RemoveCenter( <G> ) . . . . . . . .  removes the center of a group
##
InstallGlobalFunction( RemoveCenter, function( G )
  local center, removed_center, g;
  center := Centre(G);
  removed_center := [];
  for g in G do
    if g in center then
      continue;
    else
      Add(removed_center, g);
    fi;
  od;
  return removed_center;
end );

#############################################################################
##
#F  NonCommutingGraph(<G>) . . . . . . .  generate non-commuting graph of <G>
##
InstallGlobalFunction( NonCommutingGraph, function( G )
  local non_com_relation, id;
    id := One(G);
  non_com_relation := function(x, y) return Comm(x, y) <> id; end;
  if IsAbelian(G) then
    return Graph(Group(id), [], OnPoints, non_com_relation);
  fi;
  return Graph(Group(id), RemoveCenter(G), OnPoints, non_com_relation);
end );


#############################################################################
##
#F  AdjacencyMatrix(<G>) . . . . . . .  generate an adjaceny matrix of <G>
##
InstallGlobalFunction( AdjacencyMatrix, function( G )
  local adj_mat, order, adjacencies, i, j;
  order := G.order;
  if order = 0 then
    return [];
  fi;
  adjacencies := G.adjacencies;
  adj_mat := NullMat(order, order);
  for i in [1..order] do
    for j in adjacencies[i] do
      adj_mat[i][j] := 1;
    od;
  od;
  return adj_mat;
end );

#E  ncgraphs.gi  . . . . . . . . . . . . . . . . . . . . . . ends here
