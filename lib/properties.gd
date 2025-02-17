#! @Arguments M
#! @Description
#! identifies whether magma <A>M</A> is antiassociative.
#!
#! @BeginExampleSession
#! gap> IsAntiassociative(OneSmallGroup(16));
#! false
#! gap> IsAntiassociative(OneSmallAntimagma(2));
#! true
#! gap> IsAntiassociative(OneSmallAntimagma(3));
#! true
#! @EndExampleSession
#!
DeclareProperty( "IsAntiassociative", IsMagma );

#! @Arguments M
#! @Description
#! identifies associativity index of <A>M</A>.
#!
#! @BeginExampleSession
#! gap> OneSmallAntimagma(2);
#! <magma with 2 generators>
#! gap> AssociativityIndex(OneSmallAntimagma(2));
#! 0
#! gap> OneSmallGroup(4);
#! <pc group of size 4 with 2 generators>
#! gap> AssociativityIndex(OneSmallGroup(4));
#! 64
#! gap> AssociativityIndex(OneSmallGroup(4)) = 4 ^ 3;
#! true
#! @EndExampleSession
#!
DeclareAttribute( "AssociativityIndex", IsMagma );

#! @Arguments M
#! @Description
#! computes diaognal of multiplication table of <A>M</A>.
#!
#! @BeginExampleSession
#! gap> List(AllSmallAntimagmas(3), M -> DiagonalOfMultiplicationTable((M)));                
#! [ [ 2, 1, 1 ], [ 2, 1, 1 ], 
#!   [ 2, 3, 2 ], [ 2, 1, 1 ], 
#!   [ 2, 1, 1 ], [ 2, 1, 2 ], 
#!   [ 2, 3, 2 ], [ 2, 1, 2 ], 
#!   [ 2, 3, 1 ], [ 2, 3, 1 ]
#! ]
#! @EndExampleSession
#!
DeclareAttribute( "DiagonalOfMultiplicationTable", IsMagma);

#! @Arguments M
#! @Description
#! identifies commutativity index of <A>M</A>.
#!
#! @BeginExampleSession
#! 
#! @EndExampleSession
#!
DeclareAttribute( "CommutativityIndex", IsMagma );

#! @Arguments M
#! @Description
#! calculates anticommutativity index of <A>M</A>.
#!
#! @BeginExampleSession
#! @EndExampleSession
#!
DeclareAttribute( "AnticommutativityIndex", IsMagma );

#! @Arguments M
#! @Description
#! computes squares index of <A>M</A> so the order of $\left\{ m^2 | m \in \right\}$.
#!
#! @BeginExampleSession
#! gap> List(AllSmallAntimagmas(2), M -> List(M, m -> m * m) );                
#! [ [ m2, m1 ], [ m2, m1 ] ]
#! gap> List(AllSmallAntimagmas(2), M -> SquaresIndex(M ));
#! [ 2, 2 ]
#! gap> List(AllSmallAntimagmas(3), M -> SquaresIndex(M ));
#! [ 2, 2, 2, 2, 2, 2, 2, 2, 3, 3 ]
#! @EndExampleSession
#!
DeclareAttribute( "SquaresIndex", IsMagma );

#! @Arguments M
#! @Description
#! builds a collection of non-isomorphic submagmas of <A>M</A>.
#!
#! @BeginExampleSession
#! gap> AllSmallAntimagmas(2);
#! [ <magma with 2 generators>, <magma with 2 generators> ]
#! gap> List(AllSmallAntimagmas(2), M -> AllSubmagmas(M));
#! [ [ <magma with 1 generator> ], [ <magma with 1 generator> ] ]
#! @EndExampleSession
#!
DeclareGlobalFunction( "AllSubmagmas" );

#! @Arguments M
#! @Description
#! identifies class of antiassociative magma <A>M</A>.
#!
#! @BeginExampleSession
#! gap> IsAntiassociative(OneSmallGroup(16));
#! false
#! gap> IsAntiassociative(OneSmallAntimagma(2));
#! true
#! gap> IsAntiassociative(OneSmallAntimagma(3));
#! true
#! @EndExampleSession
#!
DeclareAttribute( "IdSmallAntimagma", IsMagma );

#! @Arguments M
#! @Description
#! computes isomorphism invariants of <A>M</A>.
DeclareGlobalFunction( "MagmaIsomorphismInvariantsMatch" );

#! @Arguments M, N
#! @Description
#! computes an isomoprhism between magmas <A>M</A>, <A>N</A>.
#!
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := MagmaByMultiplicationTable([ [2, 1], [2, 1] ]);
#! <magma with 2 generators>
#! gap> MagmaIsomorphism(M, N);
#! <mapping: Domain([ m1, m2 ]) -> Domain([ m1, m2 ]) >
#! @EndExampleSession
#!
DeclareOperation( "MagmaIsomorphism", [IsMagma, IsMagma] );

#! @Arguments M, N
#! @Description
#!  creates an antiisomoprhism between magmas <A>M</A>, <A>N</A>.
#!
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> MagmaAntiisomorphism(M, N);
#! <mapping: Domain([ m1, m2 ]) -> Domain([ m1, m2 ]) >
#! @EndExampleSession
#!
DeclareOperation( "MagmaAntiisomorphism", [IsMagma, IsMagma] );

#! @Arguments M, N
#! @Description
#!  identifies whether magmas <A>M</A>, <A>N</A> are isomorphic.
#!
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> T := MagmaByMultiplicationTable([ [2, 1], [2, 1] ]);
#! <magma with 2 generators>
#! gap> IsMagmaIsomorphic(M, M);
#! true
#! gap> IsMagmaIsomorphic(M, T);
#! true
#! gap> IsMagmaIsomorphic(M, N);
#! false
#! @EndExampleSession
#!
DeclareGlobalFunction( "IsMagmaIsomorphic" );

#! @Arguments [M, N]
#! @Description
#! identifies whether magmas <A>M</A>, <A>N</A> are antiisomorphic.
#!
#! @BeginExampleSession
#! gap> N := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> IsMagmaAntiisomorphic(M, M);
#! false
#! gap> IsMagmaAntiisomorphic(M, N);
#! true
#! gap> IsMagmaAntiisomorphic(M, TransposedMagma(M));
#! true
#! @EndExampleSession
#!
DeclareGlobalFunction( "IsMagmaAntiisomorphic" );

#! @Arguments [M]
#! @Description
#! generates transposed magma <A>M</A>.
#!
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> IsMagmaAntiisomorphic(M, TransposedMagma(M));
#! true
#! gap> IsMagmaIsomorphic(M, TransposedMagma(TransposedMagma(M)));
#! true
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> Display(MultiplicationTable(M));
#! [ [  2,  1 ],
#!   [  2,  1 ] ]
#! gap> Display(MultiplicationTable(TransposedMagma(M)));
#! [ [  2,  2 ],
#!   [  1,  1 ] ]
#! @EndExampleSession
#!
DeclareGlobalFunction( "TransposedMagma" );

#! @Arguments [m, k]
#! @Description
#! returns a left $k$-power of element <A>m</A>.
DeclareGlobalFunction( "LeftPower" );

#! @Arguments [m, k]
#! @Description
#!  returns a right $k$-power of element <A>m</A>.
DeclareGlobalFunction( "RightPower" );

#! @Arguments [m]
#! @Description
#! returns a left order of element <A>m</A>.
DeclareAttribute( "LeftOrder", IsExtLElement );

#! @Arguments [m]
#! @Description
#!  returns a right order of element <A>m</A>.
DeclareAttribute( "RightOrder", IsExtRElement );

#! @Arguments [m]
#! @Description
#! returns a left order of element <A>m</A>.
DeclareAttribute( "LeftOrdersOfElements", IsMagma );

#! @Arguments [m]
#! @Description
#! returns a left order of element <A>m</A>.
DeclareAttribute( "RightOrdersOfElements", IsMagma );

#! @Arguments M
#! @Description
#!  if magma is left cyclic <A>m</A>.
DeclareProperty( "IsLeftCyclic", IsMagma );

#! @Arguments M
#! @Description
#!  if magma is left cyclic <A>m</A>.
DeclareProperty( "IsRightCyclic", IsMagma );

#! @Arguments M
#! @Description
#!  if magma is left cancellative <A>m</A>.
#!
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> Display( MultiplicationTable(M) );
#! [ [  2,  1 ],
#!   [  2,  1 ] ]
#! gap> IsRightCancellative(M);
#! false
#! gap> IsLeftCancellative(M);
#! true
#! gap> List(AllSmallAntimagmas(2), M -> IsLeftCancellative(M));
#! [ true, false ]
#! @EndExampleSession
#!
DeclareProperty( "IsLeftCancellative", IsMagma );

#! @Arguments M
#! @Description
#!  if magma is right cancellative <A>m</A>.
#!
#! @BeginExampleSession
#! gap> List(AllSmallAntimagmas(2), M -> IsRightCancellative(M));
#! [ false, true ]
#! @EndExampleSession
#!
DeclareProperty( "IsRightCancellative", IsMagma );

#! @Arguments M
#! @Description
#! if magma is cancellative <A>m</A>.
#!
#! @BeginExampleSession
#! gap> List(AllSmallAntimagmas(2), M -> IsCancellative(M));
#! [ false, false ]
#! @EndExampleSession
#!
DeclareProperty( "IsCancellative", IsMagma );