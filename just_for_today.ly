\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../LilypondTemplates/functions.ly"
\include "../LilypondTemplates/midi.ly"
\include "../LilypondTemplates/hymns.ly"
\include "../LilypondTemplates/hymn_settings.ly"

%%
%% TBD: Can't finish this one until we work out a mechanism for
%%      verse specific alignments
%%

%%
%% Tweaks
%%

%%
%% Hymn Metadata Variables
%%

Title = "Just For Today"
SongNumber = \just_for_today_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 4 - DO" }
}

FirstPage = #(if just_for_today_number_rhs 1 2)

Scripture = "I beseech you therefore, brethren, by the mercies of God,
             that you present your bodies a living sacrifice, holy, acceptable to God, which
             is your reasonable service. And do not be conformed to this world, but be transformed
             by the renewing of your mind, that you may prove what is that good and acceptable and
             perfect will of God.  (Romans 12:1-2 NKJV)"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "FATHER GOD"
  meter = "7.7.7.7 with Chorus"
  composer = "Marc Schelske (1995)"
  poet = "Marc Schelske (1995)"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if just_for_today_number_rhs LeaderHints just_for_today_number)
  rhs = #(if just_for_today_number_rhs just_for_today_number LeaderHints)
  copyright = \markup { \char ##x00A9 " Copyright 1995 Marc Schelske Music." }
  license = "CCLI Song #1984677, License #2055442"
  arranger = "Jim Duke"
  tagline = ##f
}

%%
%% Music and Lyrics Variables
%%

Key = \key e \major
MajorKey = ##t

Time = {
  \time 4/4
  \tempo 4=65
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis2)
  
  gis8 fis8 |
  e2~ e8 cis8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  
  e8 fis8 |
  gis2~ gis8 gis16~ gis16 a8 b8 |
  \autoBeamOn
  b4( fis2)
  \autoBeamOff

  b8 a8 |
  a2~ a8 cis,8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4) \bar "|."
  \autoBeamOff
}

SopranoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  e8 fis8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. gis8 |
  %name.
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  % may my
  b8 a8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. fis8 |
  % name.
  e2 e4\rest
  \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  b8 dis8 |
  e2~ e8 e8 e8. e16 |
  dis2.
  
  e8 dis8 |
  cis2~ cis8 cis8 cis8 dis8 |
  \autoBeamOn
  e4~( e16 fis16 e8 dis4)
  \autoBeamOff
%  e2( dis4)
  
  cis8 dis8 |
  e2~ e8 e16~ e16 e8 gis8 |
  fis2.

  gis8 fis8 |
  fis2~ fis8 cis8 cis8 dis8 |
  e2( dis4) \bar "|."
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 dis8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 b8
  % may my
  fis'8 e8 |
  % thoughts be praise
  dis8 \hide r8 dis4 e8( dis8)
  % may my
  e8 dis8 |
  % words bring ho -- nor to Your
  cis4. cis8 dis8 dis16 dis8. dis8 |
  %name.
  \autoBeamOn
  e4~( e16 fis16 e8 dis4)
  \autoBeamOff
  % may my
  gis8 fis8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 b8
  % may my
  fis'8 e8 |
  % thoughts be praise
  dis8 \hide r8 dis4 e8( dis8)
  % may my
  e8 dis8 |
  % words bring ho -- nor to
  cis4. cis8 dis8 dis16 dis8. dis8 |
  % name.
  b2 \hide r4
  \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  gis8 b8 |
  b2~ b8 b8 cis8. b16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  b2.
  
  gis8 b8 |
  b2~ b8 b16~ b16 cis8 e8 |
  dis2.
  
  dis8 cis8 |
  cis2~ cis8 a8 a8 b8 |
  b2. \bar "|."
}

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  gis8 b8 |
  % steps be wor -- ship,
  b8 b8\rest b4 b8 gis8
  % may my
  cis8 b8 |
  % thoughts be praise
  b8 b8\rest b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 fis8 fis16 fis8. b8 |
  %name.
  b2.
  % may my
  dis8 cis8 |
  % steps be wor -- ship,
  b8 b8\rest b4 b8 gis8
  % may my
  cis8 b8 |
  % thoughts be praise
  b8 b8\rest b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 fis8 fis16 fis8. a8 |
  % name.
  gis2 e4\rest
  \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 b8 |
  e2~ e8 e8 e8. e16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4)
  
  b8 b8 |
  e2~ e8 e16~ e16 e8 e8 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4) \bar "|."
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 b8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 e8
  % may my
  e8 e8 |
  % thoughts be praise
  b8 \hide r8 b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 b8 b16 b8. b8 |
  %name.
  e2( b4)
  % may my
  b8 b8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 e8
  % may my
  e8 e8 |
  % thoughts be praise
  b8 \hide r8 b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 b8 b16 b8. b8 |
  % name.
  <e e,>2 \hide r4
  \bar "|."
}

VerseOneAlign = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis2)
  
  gis8 fis8 |
  e2~ e8 cis8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  
  e8 fis8 |
  gis2~ gis8 gis8 a8 b8 |
  \autoBeamOn
  b4( fis2)
  \autoBeamOff

  b8 a8 |
  a2~ a8 cis,8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4) \bar "|."
  \autoBeamOff
}

VerseTwoAlign = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis2)
  
  gis8 fis8 |
  e2~ e8 cis8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  
  e8 fis8 |
  gis2~ gis8 gis16 gis16 a8 b8 |
  \autoBeamOn
  b4( fis2)
  \autoBeamOff

  b8 a8 |
  a2~ a8 cis,8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4) \bar "|."
  \autoBeamOff
}

ChorusAlign = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  e8 fis8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. gis8 |
  %name.
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  % may my
  b8 a8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. fis8 |
  % name.
  e2 e4\rest
  \bar "|."
}

descant = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \hide r4 |
  \repeat volta 2 {
    \autoBeamOff
    r8^\markup { "Descant" } gis16 gis16 gis8 gis8 gis8 e8
    r4 |
    r8 fis16 fis16 fis8 fis8 gis8( fis8)
    \hide r4 |
    \hide r1 |
    \hide r1 |
  }
}

sheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

sheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  c4  | \noBreak
  c1  | \noBreak
  s2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break

  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break
}

slideMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

slideMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c2  | \noBreak
  c2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c4  | \noBreak
  c2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c2  | \noBreak
  c2. \bar "" \break
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Fa -- ther God, just for to -- day,
  Help me walk Your nar -- row way.
  Help me stand when I could fall,
  Lend me strength to hear Your call.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Here I am, just for to -- day,
  Live in me, and have Your way.
  My de -- sire, when the race is run,
  Is to hear You say, "\"Well" "done!\""
}

ChorusLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise,
  May my words bring ho -- nor to Your name.
  May my steps be wor -- ship,
  May my thoughts be praise,
  May my words bring ho -- nor to Your name.
}

descantLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise.
  May my steps be wor -- ship,
  May my thoughts be praise.
}

\include "../LilypondTemplates/bumby-hymnal-template.ly"
