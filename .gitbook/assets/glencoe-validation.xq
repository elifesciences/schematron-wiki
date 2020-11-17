declare namespace xlink = "http://www.w3.org/1999/xlink";
declare variable $folder := '/Users/fredatherden/Desktop/glencoe/';
declare variable $files := file:list($folder)[ends-with(.,'.zip')];

let $zips := 
<zips>{
  for $file in $files
  let $filepath:= ($folder||$file)
  let $zip := file:read-binary($filepath)
  let $zip-entries :=  archive:entries($zip)
  return <zip filepath="{$filepath}">{$zip-entries}</zip>
}</zips>

let $xml := for $entry in $zips//*:entry[not(starts-with(.,'__MACOSX/')) and ends-with(., '.xml')]
            let $filepath := $entry/parent::*:zip/@filepath
            return fn:parse-xml(archive:extract-text(file:read-binary($filepath), $entry))

let $not-xml := $zips//*:entry[not(starts-with(.,'__MACOSX/')) and not(ends-with(., '.xml'))]

return (
  (: stage 1 - check for folders in zip :)
  for $entry in $zips//*:entry[not(starts-with(.,'__MACOSX/')) and contains(.,'/')]
  return ('File placed inside folder in zip - '||$entry/text())
  ,
  (: stage 2 - check xml file is present :)
  if ($xml//*:article[not(parent::*)]) then ()
  else ('No XML file (ending with .xml) with <article> as its root')
  ,
  (: stage 3 - check conformtiy of xml :)
  for $media in $xml//*:media
  let $id := $media/@id
  let $href := $media/@xlink:href/string()
  return (
          if (matches($id,'^video\d+$|^fig\d+video\d+$|^app\d+fig\d+video\d+$')) then ()
          else (('Incorrect id format - '||$media/@id),$media)
          ,
          if ($media/preceding::*:media[@id = $id]) then ('There is more than 1 media element with the id '||$id)
          else ()
          ,
          if ($media/@mimetype="video") then ()
          else (('Media element must have the attribute mimetype="video". '||$id||' does not.'),$media)
          ,
          if ($media/preceding::*:media[@xlink:href = $href]) then ('There is more than one reference to '||$href||' in the xml')
          else ()
          ,
          if ($not-xml[text() = $href]) then ()
          else (('No file called '||$href||' in package(s)'),$media)
          ,
          if ($media/@*/normalize-space(.)='') then (('Empty attributes - '||string-join(for $a in $media/@*[normalize-space(.)=''] return $a/name(),', ')),$media)
          else ()
         )
  ,
  (: stage 4 - checks for each non-xml file :)
  for $entry in $not-xml
  let $path := $entry/text()
  return 
  (if ($xml//*:media/@xlink:href=$path) then ()
  else ('No reference to '||$path||' in the xml')
  ,
  if (count($zips//*:entry[text() = $path]) gt 1) then ('There is more than 1 file with the name '||$path)
  else ()
  ,
  if (ends-with($path,'.zip')) then ('Zip inside a zip - '||$path) 
  else ()
  )
)