#!/usr/bin/perl -w 

## Horizon.tv.ini genre Mapper ##
## Revision 1 ##
## DeBaschdi ##
## takealug.de ##

## Hier werden Die EIT NORM Genre Aufgeführt und definiert##
my $MOVIE             =    "Movie / Drama";
my $THRILLER          =    "Detective / Thriller";
my $ADVENTURE         =    "Adventure / Western / War";
my $SF                =    "Science fiction / Fantasy / Horror";
my $COMEDY            =    "Comedy";
my $SOAP              =    "Soap / Melodrama / Folkloric";
my $ROMANCE           =    "Romance";
my $HISTORICAL        =    "Serious / Classical / Religious / Historical movie / Drama";
my $XXX               =    "Adult movie / Drama";

my $NEWS              =    "News / Current affairs";
my $WEATHER           =    "News / Weather report";
my $NEWS_MAGAZINE     =    "News magazine";
my $DOCUMENTARY       =    "Documentary";
my $DEBATE            =    "Discussion / Interview / Debate";

my $SHOW              =    "Show / Game show";
my $GAME              =    "Game show / Quiz / Contest";
my $VARIETY           =    "Variety show";
my $TALKSHOW          =    "Talk show";

my $SPORT             =    "Sports";
my $SPORT_SPECIAL     =    "Special events (Olympic Games, World Cup, etc.)";
my $SPORT_MAGAZINE    =    "Sports magazines";
my $FOOTBALL          =    "Football / Soccer";
my $TENNIS            =    "Tennis / Squash";
my $SPORT_TEAM        =    "Team sports (excluding football)";
my $ATHLETICS         =    "Athletics";
my $SPORT_MOTOR       =    "Motor sport";
my $SPORT_WATER       =    "Water sport";
my $Winter_Sports     =    "Winter sports";
my $EQU               =    "Equestrian" ;
my $MARTIAL           =    "Martial Sports" ;

my $KIDS              =    "Children's / Youth programs";
my $KIDS_0_5          =    "Pre-school children's programs";
my $KIDS_6_14         =    "Entertainment programs for 6 to 14";
my $KIDS_10_16        =    "Entertainment programs for 10 to 16";
my $EDUCATIONAL       =    "Informational / Educational / School programs";
my $CARTOON           =    "Cartoons / Puppets";

my $MUSIC             =    "Music / Ballet / Dance";
my $ROCK_POP          =    "Rock / Pop";
my $CLASSICAL         =    "Serious music / Classical music";
my $FOLK              =    "Folk / Traditional music";
my $JAZZ              =    "Jazz";
my $OPERA             =    "Musical / Opera";

my $CULTURE           =    "Arts / Culture (without music)";
my $PERFORMING        =    "Performing arts";
my $FINE_ARTS         =    "Fine arts";
my $RELIGION          =    "Religion";
my $POPULAR_ART       =    "Popular culture / Traditional arts";
my $LITERATURE        =    "Literature";
my $FILM              =    "Film / Cinema";
my $EXPERIMENTAL_FILM =    "Experimental film / Video";
my $BROADCASTING      =    "Broadcasting / Press";


my $SOCIAL            =    "Social / Political issues / Economics";
my $MAGAZINE          =    "Magazines / Reports / Documentary";
my $ECONOMIC          =    "Economics / Social advisory";
my $VIP               =    "Remarkable people";

my $SCIENCE           =    "Education / Science / Factual topics";
my $NATURE            =    "Nature / Animals / Environment";
my $TECHNOLOGY        =    "Technology / Natural sciences";

my $MEDECINE          =    "Medicine / Physiology / Psychology";
my $FOREIGN           =    "Foreign countries / Expeditions";
my $SPIRITUAL         =    "Social / Spiritual sciences";
my $FURTHER_EDUCATION =    "Further education";
my $LANGUAGES         =    "Languages";

my $HOBBIES           =    "Leisure hobbies";
my $TRAVEL            =    "Tourism / Travel";
my $HANDICRAF         =    "Handicraft";
my $MOTORING          =    "Motoring";
my $FITNESS           =    "Fitness and health";
my $COOKING           =    "Cooking";
my $SHOPPING          =    "Advertisement / Shopping";
my $GARDENING         =    "Gardening";
my $FASHION           =    "Fashion";

my $LIVE              =    "Live Broadcast";
my $NONE              =    "Keine Informationen Enthalten";


my %REPLACE=(

###AB Hier werden die Grabber Genre/category nach unseren definierten EIT Genre gemappt###

 "Movie"  => $MOVIE ,            
 "Spielfilm"  => $MOVIE ,
 "Familienfilm" => $MOVIE ,
 "Spielfilm/Sonstige"  => $NONE ,            
 "Drama (film)"  => $MOVIE ,            
 "Drama (filme)"  => $MOVIE ,
 "Drama"  => $MOVIE ,            
 "Spielfilm/Drama"  => $MOVIE ,            
 "Melodrama"  => $MOVIE, 
 "Melodram"  => $MOVIE,
 "Thriller"  => $THRILLER ,         
 "Agentenfilmparodie" => $THRILLER ,
 "Spielfilm/Thriller"  => $THRILLER ,        
 "Krimi"   => $THRILLER ,         
 "Serie/Krimi"   => $THRILLER ,         
 "Spielfilm/Krimi"   => $THRILLER ,        
 "Abenteuer"  => $ADVENTURE ,        
 "Abenteuerfilm" => $ADVENTURE ,
 "Spielfilm/Abenteuer"  => $ADVENTURE ,        
 "Action"  => $ADVENTURE ,        
 "Spielfilm/Action"  => $ADVENTURE ,        
 "Actionfilm"  => $ADVENTURE ,        
 "Serie/Action"  => $ADVENTURE ,        
 "Western"  => $ADVENTURE ,       
 "Spielfilm/Western" => $ADVENTURE ,        
 "Kriegsfilme" => $ADVENTURE ,        
 "Spielfilm/Kriegsfilme" => $ADVENTURE ,         
 "Sci Fi"  => $SF ,               
 "Spielfilm/Science fiction"  => $SF ,               
 "Serie/Science fiction"  => $SF ,               
 "Fantasyabenteuer" => $SF ,
 "Horror"  => $SF ,               
 "Spielfilm/Horror"  => $SF ,               
 "Spielfilm/Fantasy"  => $SF ,              
 "Fantasyfilm" => $SF ,
 "Komödie"  => $COMEDY ,           
 "Teenagerkomödie" => $COMEDY ,
 "Fantasykomödie" => $COMEDY ,
 "Familienkomödie" => $COMEDY ,
 "Spielfilm/Comedy"  => $COMEDY ,           
 "Serie/Comedy"  => $COMEDY ,           
 "Unterhaltung/Comedy" => $COMEDY ,           
 "Drama (serie)"  => $SOAP ,             
 "Serie/Drama"  => $SOAP ,            
 "Serie/Soap"  => $SOAP ,             
 "Theater"  => $SOAP ,            
 "Romance"  => $ROMANCE ,          
 "Serie/Romantik"  => $ROMANCE ,          
 "Spielfilm/Romantik"  => $ROMANCE ,          
 "Romanze"  => $ROMANCE ,          
 "Heimatfilm"  => $HISTORICAL ,       
 "Historienfilm"  => $HISTORICAL ,       
 "Erotik"  => $XXX ,              
 "Erotik/Spielfilm-Erotik" => $XXX ,             
 "Erotik/Serie-Erotik" => $XXX ,              

 "Nachrichten"  => $NEWS ,                        
 "Nachrichten/Info/Sonstige" => $NONE ,
 "Nachrichten/Info/Politik" => $NEWS ,
 "Nachrichten/Info/Finanzen" => $NEWS ,
 "Wetter"  => $WEATHER ,          
 "Nachrichten/Info/Wetter" => $WEATHER ,          
 "Info"  => $NEWS_MAGAZINE ,    
 "Nachrichten/Info/Magazin"  => $NEWS_MAGAZINE ,   
 "Dokumentation" => $DOCUMENTARY ,      
 "Dokufilm" => $DOCUMENTARY ,      
  "Dokumentarfilm" => $DOCUMENTARY ,      
 "Dokureihe" => $DOCUMENTARY ,      
  "Doku-Reihe" => $DOCUMENTARY ,      
  "Dokuserie" => $DOCUMENTARY ,      
   "Doku" => $DOCUMENTARY ,      
  "Studio-Doku" => $DOCUMENTARY ,       
  "Nachrichten/Info/Dokumentation"  => $DOCUMENTARY , 
 "Musikdokureihe"  => $DOCUMENTARY ,      
 "Talk"  => $DEBATE ,           


 "Series"  => $SHOW ,             
 "Reality"  => $SHOW ,             
 "Unterhaltung/Reality"  => $SOAP ,             
 "Unterhaltung/Shows"  => $SHOW,             
 "Unterhaltungsshow"  => $SHOW,
 "Unterhaltung/Game"  => $SHOW ,             
 "Unterhaltung/Sonstige"  => $NONE ,             
 "Serie/Sonstige" => $NONE ,

 "Show"  => $GAME ,             
 "Unterhaltung"  => $GAME ,             

"Talk Show"  => $TALKSHOW ,         
  "Unterhaltung/Talkshow"  => $TALKSHOW ,         

 "Sport"  => $SPORT ,            
 "Snooker"  => $TENNIS ,          
 "Langlauf"  => $TENNIS ,          
 "Autosport"  => $SPORT ,            
 "Sport/Golf"  => $SPORT ,            
 "Radsport"  => $SPORT ,            
 "Sport/Radsport"  => $SPORT ,            
 "Sport/Sonstige"  => $NONE ,            
 "Extremsport" => $SPORT ,            
 "Special Event"  => $SPORT_SPECIAL ,    
  "Sport/Besondere Ereignisse"  => $SPORT_SPECIAL ,    
  "Sport Magazin"  => $SPORT_MAGAZINE ,   
   "Sport/Reportage"  => $SPORT_MAGAZINE ,   
 "Fußball"  => $FOOTBALL ,         
 "Fussball"  => $FOOTBALL ,         
 "Sport/Fußball"  => $FOOTBALL ,         
 "Squash"  => $FOOTBALL ,         
 "Sport/Squash"  => $FOOTBALL ,         
 "Tennis"  => $TENNIS ,           
 "Tischtennis"  => $TENNIS ,           
 "Sport/Tennis"  => $TENNIS ,           
 "Team Sport"  => $SPORT_TEAM ,       
 "Teamsport"  => $SPORT_TEAM ,       
 "Sport/Mannschaftssport"  => $SPORT ,       
 "Leichtathletik"  => $ATHLETICS ,        
 "Sport/Leichtathletik"  => $ATHLETICS ,        
 "Motorsport"  => $SPORT_MOTOR ,      
 "Motorradsport"  => $SPORT_MOTOR ,      
 "Sport/Motorsport"  => $SPORT_MOTOR ,      

 "Wassersport"  => $SPORT_WATER , 
 "Sport/Wassersport"  => $SPORT_WATER ,
 "Wintersport"  => $Winter_Sports ,
 "Sport/Wintersport"  => $Winter_Sports ,
 "Reitsport"    => $EQU ,  
 "Sport/Reiten"    => $EQU ,
 "Kampfsport" => $MARTIAL ,
 "Judo" => $MARTIAL ,
 "Sport/Kampfsport" => $MARTIAL ,
 "Bogenschießen"  => $SPORT_SPECIAL ,

 "Kinder"  => $KIDS ,             
 "Jugend"  => $KIDS ,             
 "Kinderfilm" => $KIDS ,
 "Jugendfilm" => $KIDS ,
 "Märchenfilm" => $KIDS ,
 "Kinder/Jugend/Serien" => $KIDS ,             
  "Kinderabenteuer" => $KIDS ,             
 "Kinder/Jugend/Show" => $KIDS ,             
 "Kinder, 0 6"  => $KIDS_0_5 ,         
 "Kinder, 6 14"  => $KIDS_6_14 ,        
 "Kinder, 10 16"  => $KIDS_10_16 ,      
 "Zeichentrick"  => $CARTOON ,         
 "Zeichentrickserie"  => $CARTOON ,
 "Animationsfilm" => $CARTOON ,
 "Trickfilm" => $CARTOON ,
 "Spielfilm/Zeichentrick" => $CARTOON ,          

 "Musik"  => $MUSIC ,            
 "Musikfilm"  => $MUSIC ,            
 "Easy Listening"  => $MUSIC ,            
 "Musik/Sonstige" => $NONE ,
  "Clipcharts" => $MUSIC , 
 "Ballett"  => $MUSIC ,            
  "Tanz"  => $MUSIC ,            
  "Ballet" => $MUSIC ,
  "Tanzdoku"  => $MUSIC ,            
  "Musikdoku"  => $MUSIC ,            
  "Rock"  => $ROCK_POP ,         
  "Pop"  => $ROCK_POP ,         
 "Klassik"  => $CLASSICAL ,        
 "Volksmusik"  => $FOLK ,             
 "Jazz"  => $JAZZ ,             
 "Musical"  => $OPERA ,            
 "Musik/Musical"  => $OPERA ,            
 "Musik/Oper"  => $OPERA ,            
 "Spielfilm/Musical"  => $OPERA ,            
 "Konzert"               =>$OPERA ,
"Oper"  => $OPERA ,            
"Kunst"  => $CULTURE ,         
"Kunst Magazin"  => $CULTURE ,         
"Kunstmagazin"  => $CULTURE ,         
"Kunstdoku"  => $CULTURE ,         
  "Kunstreportage"  => $CULTURE ,         
 "Lifestyle"  => $CULTURE ,         
 "Unterhaltung/Lifestyle"  => $CULTURE ,         
 "Kultur"  => $CULTURE ,         
 "Darstellende Kunst"  => $PERFORMING ,       
 "Darst. Kunst"  => $PERFORMING ,       
 "Porträt"  => $PERFORMING ,       
  "Portrait"  => $PERFORMING ,       
 "Bildende Kunst"  => $FINE_ARTS ,        
 "Religion"  => $RELIGION ,         
 "Themen/Religion"  => $RELIGION ,         
 "Populäre Kunst"  => $POPULAR_ART ,      
 "Literatur"  => $LITERATURE ,       
 "Literaturmagazin" => $LITERATURE ,
 "Film"  => $FILM ,             
  "Kino"  => $FILM ,             
 "Politik"  => $SOCIAL ,           
 "Themen/Politik"  => $SOCIAL ,          
 "Magazin"  => $MAGAZINE ,         
  "Wissen"  => $MAGAZINE ,         
 "Reportage"  => $MAGAZINE ,         
 "Report" => $MAGAZINE ,
 "Reportagereihe"  => $MAGAZINE ,         
 "Wissenschaft"  => $ECONOMIC ,         
 "Themen/Wissenschaft"  => $ECONOMIC ,         
 "Wirtschaft"  => $ECONOMIC ,         
 "Themen/Wirtschaft"  => $ECONOMIC ,         
 "Berühmte Leute"  => $VIP ,              

 "Weiterbildung"  => $SCIENCE ,          
 "Bildung"  => $SCIENCE ,          
 "Themen/Bildung" => $SCIENCE ,          
  "Geschichte"  => $SCIENCE ,          
   "Themen/Geschichte"  => $SCIENCE ,          
 "Natur"  => $NATURE ,           
 "Themen/Natur"  => $NATURE ,           
 "Technologie"  => $TECHNOLOGY ,       
"Medizin"  => $MEDECINE ,         
 "Expeditionen"  => $FOREIGN ,          
 "Soziales"  => $SPIRITUAL ,        

 "Sprachen"  => $LANGUAGES ,       
 "Freizeit"  => $HOBBIES ,          
 "Garten"  => $HOBBIES ,          
 "Unterhaltung/Haus&Garten"  => $HOBBIES ,          
 "Special Interest/Sonstige"  => $NONE ,          
 "Reisen"  => $TRAVEL ,           
"Themen/Reise"  => $TRAVEL ,           
"Reisedoku"  => $TRAVEL ,           
 "Unterhaltung/Kunst und Handwerk"  => $HANDICRAF ,        

 "Rund Ums Auto"  => $MOTORING ,         
 "Gesundheit"  => $FITNESS ,          
 "Themen/Gesundheit" => $FITNESS ,          
 "Kochen"  => $COOKING ,          
 "Unterhaltung/Kochen"  => $COOKING ,          
 "Shopping"  => $SHOPPING ,         
"Mode"  => $GARDENING ,        
 "Liveübertragung"  => $LIVE ,        
"Undefiniert" => $NONE ,

 ) ; 

my $PRE  = '<category( lang=\"([a-z]+)\"|)>' ;
my $POST = '</category>'  ;

sub myfilter {
  my ($lang,$name) = @_;
  $name =~ s/\W//g;
  $lang="de"  if ( $lang eq "" ) ;   # Default language is "en" when is no lang attribute
  my $a = "$lang:$name" ; 
  if ( exists $REPLACE{$a} ) {     
      
      return $REPLACE{$a} ;
  } elsif ( $lang eq "en" ) {    
      print STDERR "Warning: Unmanaged category #1: '$a'\n" ;
      return $name ;   # For English, assume that missing entries are fine
  } else {
      print STDERR "Warning: Unmanaged category #2: '$a'\n" ;
      return $name ;
  }
}

# read the xml file and update the info
my $num_args = $#ARGV + 1;
if ($num_args != 1) {
  print STDERR "\nArg=$num_args Usage: <script> <xmlfile>\n";
  exit;
}
my $xmlfile=$ARGV[0];
my $parser=new XML::DOM::Parser;
print STDERR "Reading XML file\n";
my $doc=$parser->parsefile($xmlfile) or die$!;
print STDERR "Parsing Sections\n";
my $root=$doc->getDocumentElement();
my @program=$root->getElementsByTagName("programme");
foreach my $program(@program) {

  my $dateElement=$program->getElementsByTagName("date")->item(0);
  my $date;
  if ( defined $dateElement ) {
    $date=$dateElement->getFirstChild()->getData();
    if (length($date) == 8) {
      $date = substr($date,0,4) . "/" . substr($date,4,2) . "/" . substr($date,6,2);
    }
  }

  my $descadd='';
  if ( defined $date ) {
    $descadd='(' . $date . ') ';
  }
  my @episodenum=$program->getElementsByTagName("episode-num");
  my $se;
  foreach my $episodenum(@episodenum) {
    if ($episodenum->getAttribute("system") eq "common") {
      $se=$episodenum->getFirstChild()->getData();
    } elsif (($episodenum->getAttribute("system") eq "dd_progid") 
         && (!defined $se)) {

      my $dd_prog_id=$episodenum->getFirstChild()->getData();
      if ( $dd_prog_id =~ /^(..\d{8}).(\d{4})/ ) {
        # EP12345678.1234
        my $dd_e=$2;
        my $dd_s=$1;
        if (int($dd_e) > 0) {
          $se = sprintf("E%03d", int($dd_e));
        }
      }
    }
  }

  my @category=$program->getElementsByTagName("category");
  foreach my $category(@category) {
    $descadd=$descadd . $category->getFirstChild()->getData() . ' / ';
  }
  if ( defined $se ) {
    $descadd=$descadd . ' ' . $se;
  }

  # update the desc with year, season, episode and genre data
  my $descElement=$program->getElementsByTagName("desc")->item(0);
  my $desc='';
  if ( defined $descElement ) {
    $desc=$descElement->getFirstChild()->getData();
    $desc=$descadd . "\n" . $desc;
    $descElement->getFirstChild()->setNodeValue($desc);

  } else {
    if ( defined $descadd ) {
      # need to add a desc node
      $descElement=$doc->createElement('desc');
      my $textElement=$doc->createTextNode($descadd);
      $descElement->appendChild($textElement);
      $program->appendChild($descElement);
    }
  }

  # update subtitle with date
  my $subtitleElement=$program->getElementsByTagName("sub-title")->item(0);
  my $subtitle;
  if ( defined $subtitleElement ) {
    if (defined $se ) {
      $subtitle=$subtitleElement->getFirstChild()->getData();
      $subtitle=$se . ' ' . $subtitle;
      $subtitleElement->getFirstChild()->setNodeValue($subtitle);
    }
  }

}
print STDERR "Pass 1 complete\n";
my $tempfile="/tmp/xmltv.xml_temp";
$doc->printToFile($tempfile);
$doc->dispose;
open(my $FN, '<', $tempfile) or die "unable to open file, $!";

print STDERR "Updating Genre\n";
while (<$FN>) {
    my $line = $_ ;
    # Warning $PRE contains 2 hidden level of parenthesis
    #  
    $line =~ s/($PRE)(.*)($POST)/"$1".myfilter($3,$4)."$5"/ge ;
    print $line;
} 
close($FN);
unlink $tempfile;
