let $x:= doc('twitter.xml') 

for $y in $x//tweet
  return(
    element 
      {"contenu"}
      {$y//post}
    ,
    if($y//cptRetweet<2) then
       element 
         {"nonRetwitted"}
         {}
    else
        let $z := $y[@reponse=$y/@idTweet] return
        element 
          {"date"}
          {($z[1], $z[2])} 
    
)