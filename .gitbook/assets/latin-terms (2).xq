declare variable $xml as document-node() external;

declare function local:get-text($root as document-node()) as xs:string{
  string-join(for $x in $root//*:article/*[local-name() = 'body' or local-name() = 'back']//*
        return
        if ($x/ancestor::sec[@sec-type='additional-information']) then ()
        else if ($x/local-name() = 'italic') then ()
        else $x/text(),'')
};

declare function local:get-text-matches($text as xs:string, $regex as xs:string, $type as xs:string){
  if (not($type=('roman','italic'))) 
    then (xs:QName("local:error"),
        ($type||' is not allowed as value in thirs argument of local:get-text-matches'))
  else 
  let $result := <result>{analyze-string($text,$regex)//*:match}</result>
  let $values := distinct-values($result//*:match) 
  let $items := for $value in $values return <item count="{count($result//*:match[.=$value])}">{$value}</item>
  
  return <result type="{$type}" count="{sum(for $c in $items return number($c/@count))}">{$items}</result>
};

declare function local:get-node-matches($nodes as element()*, $regex as xs:string) as element(){
  let $result := <result>{for $node in $nodes return analyze-string($node,$regex)//*:match}</result>
  let $values := distinct-values($result//*:match) 
  let $items := for $value in $values return <item count="{count($result//*:match[.=$value])}">{$value}</item>
  
  return <result type="italic" count="{sum(for $c in $items return number($c/@count))}">{$items}</result>
};

declare function local:print-specifics($result as element()) as xs:string{
  if ($result/@type="italic") 
    then ('Italicised terms: '||$result/@count||' ['||string-join(for $item in $result//*:item return ($item/@count||' instance(s) of '||$item),', ')||']')
  else ('Roman terms: '||$result/@count||' ['||string-join(for $item in $result//*:item return ($item/@count||' instance(s) of '||$item),', ')||']')
  
};

declare function local:print-result($result1 as element(),$result2 as element()) as xs:string{
  let $roman := ($result1|$result2)[@type="roman"]
  let $italic := ($result1|$result2)[@type="italic"]
  return
  if (not($roman//*:item) and not($italic//*:item)) then 'No latin terms found'
  else if (not($roman//*:item) and $italic//*:item) then 'Latin terms are consistently italicised'
  else if ($roman//*:item and not($italic//*:item)) then 'Latin terms are consistently not italicised'
  else if (number($roman/@count) = number($italic/@count)) then ('Latin terms are inconsistenly italicised/roman.&#xa;There are an equal number of roman and italicised Latin terms '||'('||$roman/@count||')'||'.&#xa;'||local:print-specifics($roman)||'&#xa;'||local:print-specifics($italic)) 
  else if (number($roman/@count) gt number($italic/@count)) then 
          let $no := number($roman/@count) - number($italic/@count)
          let $text-before-no := if ($no = 1) then 'is' else ('are')
          return ('Latin terms are inconsistenly italicised.&#xa;There '||$text-before-no||' '||$no||' more roman term(s)&#xa;'||local:print-specifics($roman)||'&#xa;'||local:print-specifics($italic)) 
  else  
      let $no := number($italic/@count) - number($roman/@count)
      let $text-before-no := if ($no = 1) then 'is' else ('are')
      return ('Terms are inconsistenly italicised.&#xa;There '||$text-before-no||' '||number($italic/@count) - number($roman/@count)||' more italic term(s)&#xa;'||local:print-specifics($italic)||'&#xa;'||local:print-specifics($roman)) 
};

declare function local:get-result($xml,$regex as xs:string){
  let $italic-text := string-join($xml//*:italic,' ')
  let $roman-text := local:get-text($xml)
  let $roman := local:get-text-matches($roman-text,$regex,'roman')
  let $italic := local:get-text-matches($italic-text,$regex,'italic')
  
  return local:print-result($roman,$italic)
};

let $regex := '[Ii]n\s+[Vv]itro|[Ee]x\s+[Vv]itro|[Ii]n\s+[Vv]ivo|[Ee]x\s+[Vv]ivo|a\s+priori|a\s+posteriori|[Dd]e\s+[Nn]ovo|[Ii]n\s+[Uu]tero|[Ii]n\s+[Nn]atura|[Ii]n\s+[Ss]itu|[Ii]n\s+[Pp]lanta|[Rr]ete\s+[Mm]irabile|[Nn]omen\s+[Nn]ovum| [Ss]ensu |[Aa]d\s+[Ll]ibitum|[Ii]n\s+[Oo]vo'


return local:get-result($xml,$regex)

