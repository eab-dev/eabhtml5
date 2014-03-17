{if $source|contains('youtube.com')}
{def $url_parts = $source|explode('://') $uri_parts = $url_parts[1]|explode('/')}
<iframe style="border:none" src="{$url_parts[0]}://www.youtube.com/embed/{$uri_parts[2]}" width="{$width}" height="{$height}"></iframe>
{else}
<object width="{$width}" height="{$height}"><param name="movie" value="{$source}"></param><param name="allowFullScreen" value="{if and( is_set( $allow_full_screen ), eq( $allow_full_screen, '1' ) )}true{else}false{/if}"></param><param name="allowScriptAccess" value="{$allow_script_access}"></param><embed src="{$source}" type="application/x-shockwave-flash" allowscriptaccess="{$allow_script_access}" allowfullscreen="{if and( is_set( $allow_full_screen ), eq( $allow_full_screen, '1' ) )}true{else}false{/if}" width="{$width}" height="{$height}"></embed></object>
{/if}
