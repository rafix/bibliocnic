<?php // Vars: $dmTagPager

echo _open('ul.elements');

foreach ($dmTags as $dmTag)
{
  echo _open('li.element');
  if ($dmTag->total_num >= 10){
   $tagText = $dmTag->name.' ('.$dmTag->total_num.')';

    if($dmTag->hasDmPage())
    {
      echo _link($dmTag)->set('.tag_grande')->text($tagText);
	  
    }
    else
    {
      echo _tag('span.tag_grande', $tagText);
    }
  
  
  }
  elseif($dmTag->total_num < 10 && $dmTag->total_num >= 5 ){
  
  $tagText = $dmTag->name.' ('.$dmTag->total_num.')';

    if($dmTag->hasDmPage())
    {
      echo _link($dmTag)->set('.tag_medio')->text($tagText);
    }
    else
    {
      echo _tag('span.tag_medio', $tagText);
    }
  }
   
else{
  $tagText = $dmTag->name.' ('.$dmTag->total_num.')';

    if($dmTag->hasDmPage())
    {
      echo _link($dmTag)->text($tagText);
	  
    }
    else
    {
      echo $tagText;
    }

}
  echo _close('li');
}

echo _close('ul');