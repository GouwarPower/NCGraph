#############################################################################
##
##  PackageInfo.g for the package `NCGraph'                       John Gouwar
##  (created from Frank Lübeck's PackageInfo.g template file)
##
##

SetPackageInfo( rec(
  PackageName := "NCGraph",
  Subtitle := "A package for generating non-commuting graphs of finite groups",
  Version := "1.0.0",
  Date := "15/05/2020",
  License := "MIT",
  PackageWWWHome := "https://github.com/GouwarPower/NCGraph",
  SourceRepository := rec( Type := "git",
                           URL := "https://github.com/GouwarPower/NCGraph"),
  README_URL := Concatenation( ~.PackageWWWHome, "/README.md" ),
  PackageInfoURL := Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),
  AbstractHTML :=
    "The <span class=\"pkgname\">NCGraph</span> package, as its name suggests, \
    is a small package for generating non-commuting graphs of finite groups\
    with the <span class=\"pkgname\">GRAPE</span> package.",
  ArchiveURL := "https://github.com/GouwarPower/NCGraph",
  ArchiveFormats := ".tar.gz",
  Dependencies := rec(
    GAP := "4.11",
    NeededOtherPackages := [["GAPDoc", "1.5"], ["grape", "4.8.3"]],
    SuggestedOtherPackages := [],
    ExternalConditions := []
  ),
  Persons := [
    rec(
      LastName      := "Gouwar",
      FirstNames    := "John",
      IsAuthor      := true,
      IsMaintainer  := true,
      WWWHome       := "https://john-gouwar.herokuapp.com",
    )],

  PackageDoc := rec(
    BookName  := "NCGraph",
    ArchiveURLSubset := ["doc"],
    HTMLStart := "doc/chap0.html",
    PDFFile   := "doc/manual.pdf",
    # the path to the .six file used by GAP's help system
    SixFile   := "doc/manual.six",
    # a longer title of the book, this together with the book name should
    # fit on a single text line (appears with the '?books' command in GAP)
    # LongTitle := "Elementary Divisors of Integer Matrices",
    LongTitle := "Documentation for NCGraph Package",
  ),


  AvailabilityTest := ReturnTrue,
  TestFile := "tst/testall.g",
  Status := "dev",
  Keywords := ["non-commuting graphs"],
));
