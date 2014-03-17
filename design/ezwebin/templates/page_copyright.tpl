<address>
&copy; 2012 &ndash; {currentdate()|datetime( 'custom', '%Y' )} 
{if is_set($module_result.content_info.persistent_variable['copyright'])}
	{$module_result.content_info.persistent_variable[$key]|wash}
{elseif is_set($site.meta['dcterms.rightsHolder'])}
	{$site.meta['dcterms.rightsHolder']|wash}
{else}
	{$site.meta['copyright']|wash}
{/if}
</address>