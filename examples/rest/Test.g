#! @Chapter Examples and Tests

#! @Section Spectral Sequences

LoadPackage( "ModulePresentationsForCAP" );
LoadPackage( "IntrinsicCategories" );
LoadPackage( "HomologicalAlgebraForCAP" );
LoadPackage( "RingsForHomalg" );

#! @Example
QQ := HomalgFieldOfRationalsInSingular( );;
R := QQ * "x,y";
#! Q[x,y]
category := IntrinsicCategory( LeftPresentations( R ) );
#! intrinsic_Category of left presentations of Q[x,y]
M := AsLeftOrRightPresentation(
  HomalgMatrix( "[ 1, x, 0, 1 ]", 2, 2, R ), true );
#! <An object in Category of left presentations of Q[x,y]>
phi := CoverByFreeModule( M );
#! <A morphism in Category of left presentations of Q[x,y]>
M := Intrinsify( category, M );
#! <an intrinsic object on active cell: <An object in Category
#!  of left presentations of Q[x,y]>>
F := Intrinsify( category, Source( phi ) );
#! <an intrinsic object on active cell:
#!  <An object in Category of left presentations of Q[x,y]>>
phi := Intrinsify( phi, F, 1, M, 1 );
#! <an intrinsic morphism on active cell:
#!  <A morphism in Category of left presentations of Q[x,y]>>
sm := FunctorStandardModuleLeft( R );
#! Less generators for Category of left presentations of Q[x,y]
SM := Intrinsify( sm, category );
#! Intrinsic version of Less generators for
#! Category of left presentations of Q[x,y]
