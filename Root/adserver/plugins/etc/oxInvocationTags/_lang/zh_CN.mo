��    ;      �  O   �        f  	  �   p     	  ]   2
  �  �
  �   h  �       �  m    �   �  	   I     S  8   a     �     �     �     �     �     �       
          	   5  -   ?     m     �  	   �  "   �     �     �     �     �     �     �                    (     5     G     M  	   _  !   i     �     �     �     �     �     �     �     �  !   �                *     9     E  
   M  �  X  f  A  |   �  �   %  :   �  @    �   I  �   �    �  m  �  �      	   �      �   8   �      !     '!     D!     U!     d!     q!     x!  
   !     �!  	   �!  -   �!     �!     �!     "     "  
   "     "     #"     /"     ="     E"     R"     Z"     a"     ~"     �"     �"     �"  	   �"  !   �"     �"     �"     �"     #     #     )#     /#     5#  !   9#     [#     r#     �#     �#     �#     �#            "            ;   4         /      0   ,         7             9   '   !   (      +                      
           6       2          $   &      )             %      8       *   -              :          .       5   	          1                    #         3                  
  * As the PHP script below tries to set cookies, it must be called
  * before any output is sent to the user's browser. Once the script
  * has finished running, the HTML code needed to display the ad is
  * stored in the $adArray array (so that multiple ads can be obtained
  * by using mulitple tags). Once all ads have been obtained, and all
  * cookies set, then you can send output to the user's browser, and
  * print out the contents of $adArray where appropriate.
  *
  * Example code for printing from $adArray is at the end of the tag -
  * you will need to remove this before using the tag in production.
  * Remember to ensure that the PEAR::XML-RPC package is installed
  * and available to this script, and to copy over the
  * lib/xmlrpc/php/openads-xmlrpc.inc.php library file. You may need to
  * alter the 'include_path' value immediately below.
  */ 
  * Don't forget to replace the '{clickurl}' text with
  * the click tracking URL if this ad is to be delivered through a 3rd
  * party (non-Max) adserver.
  * 
  * If iFrames are not supported by the viewer's browser, then this
  * tag only shows image banners. There is no width or height in these
  * banners, so if you want these tags to allocate space for the ad
  * before it shows, you will need to add this information to the <img>
  * tag. 
  * Replace all instances of {random} with
  * a generated random number (or timestamp).
  * 
  * This noscript section of this tag only shows image banners. There
  * is no width or height in these banners, so if you want these tags to
  * allocate space for the ad before it shows, you will need to add this
  * information to the <img> tag.
  *
  * If you do not want to deal with the intricities of the noscript
  * section, delete the tag (from <noscript>... to </noscript>). On
  * average, the noscript tag is called from less than 1% of internet
  * users. 
  * This tag has been generated for use on a non-SSL page. If this tag
  * is to be placed on an SSL page, change the
  *   'http://%s/...'
  * to
  *   'https://%s/...'
  * 
  * This tag only shows image banners. There is no width or height in
  * these banners, so if you want these tags to allocate space for the
  * ad before it shows, you will need to add this information to the
  * <img> tag. 
  *------------------------------------------------------------*
  * This interstitial invocation code requires the images from:
  * /www/images/layerstyles/%s/...
  * To be accessible via: http(s)://%s/layerstyles/%s/...
  *------------------------------------------------------------* 
  -- Don't forget to replace the 'Insert_Clicktrack_URL_Here' text with
  -- the click tracking URL if this ad is to be delivered through a 3rd
  -- party (non-Max) adserver.
  --
  -- Don't forget to replace the 'Insert_Random_Number_Here' text with
  -- a cache-buster random number each time you deliver the tag through
  -- a 3rd party (non-Max) adserver.
  -- 
  -- This tag has been generated for use on a non-SSL page. If this tag
  -- is to be placed on an SSL page, change all instances of
  --   'http://%s/...'
  -- to
  --   'https://%s/...'
  -- Alignment Always active Assign the $phpAds_raw['html'] variable to your template Automatically close after Automatically collapse after Background color Banner padding Border color Bottom Center Close text Delay before banner is hidden Direction Hide the banner when the cursor is not moving Horizontal alignment Horizontal shift Image Tag Interstitial or Floating DHTML Tag Javascript Tag Left Left margin Left to right Limited Local Mode Tag Looping Middle No Cookie Image Tag Option - SSL Option - noscript Pause Placement Comment Popup Tag Publisher code - Single Page Call Right Right margin Right to left Show close button Smooth movement Speed Style Top Transparancy of the hidden banner Transparent background Vertical alignment Vertical shift XML-RPC Tag [Close] iFrame Tag Project-Id-Version: Invocation tags
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2008-09-25 09:12+0100
Last-Translator: Matteo Beccati <matteo@beccati.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: (n != 1);
X-Poedit-SourceCharset: utf-8
X-Poedit-KeywordsList: translate
Language-Team: 
Language: en_GB
X-Generator: Poedit 1.6.4
X-Poedit-SearchPath-0: plugins_repo/openXInvocationTags/extensions/invocationTags/oxInvocationTags/
 
  * As the PHP script below tries to set cookies, it must be called
  * before any output is sent to the user's browser. Once the script
  * has finished running, the HTML code needed to display the ad is
  * stored in the $adArray array (so that multiple ads can be obtained
  * by using mulitple tags). Once all ads have been obtained, and all
  * cookies set, then you can send output to the user's browser, and
  * print out the contents of $adArray where appropriate.
  *
  * Example code for printing from $adArray is at the end of the tag -
  * you will need to remove this before using the tag in production.
  * Remember to ensure that the PEAR::XML-RPC package is installed
  * and available to this script, and to copy over the
  * lib/xmlrpc/php/openads-xmlrpc.inc.php library file. You may need to
  * alter the 'include_path' value immediately below.
  */ 
  * 如果要通过第三方系统投放该广告，请将 {clickurl} 替换为第三方系统的点击率统计 URL。
  * 
  * 本代码在不支持 iFrame 的浏览器中仅显示图片素材，并且不会设置高度和宽度属性。如果需要，请在 <img> 标签中自行设置。 
  * 请将 {random} 替换为随机数或时间戳。
  * 
  * <noscript> 标签仅显示图片素材，并且不会设置高度和宽度属性。
  * 如果需要，请在 <img> 标签中自行设置。
  *
  * 如果需要，您可以删除该标签（从 <noscript> 到 </noscript>）。
  * 一般而言，仅有不到 1% o的用户会调用 <noscript> 标签中的代码。 
  * 本代码适用于非 SSL 页面。如果需要放置在 SSL 页面中，请将
  *   “http://%s/...”
  * 替换为
  *   “https://%s/...”
  * 
  * 本代码在不支持 iFrame 的浏览器中仅显示图片素材，并且不会设置高度和宽度属性。如果需要，请在 <img> 标签中自行设置。 
  *------------------------------------------------------------*
  * This interstitial invocation code requires the images from:
  * /www/images/layerstyles/%s/...
  * To be accessible via: http(s)://%s/layerstyles/%s/...
  *------------------------------------------------------------* 
  -- Don't forget to replace the 'Insert_Clicktrack_URL_Here' text with
  -- the click tracking URL if this ad is to be delivered through a 3rd
  -- party (non-Max) adserver.
  --
  -- Don't forget to replace the 'Insert_Random_Number_Here' text with
  -- a cache-buster random number each time you deliver the tag through
  -- a 3rd party (non-Max) adserver.
  -- 
  -- 本代码适用于非 SSL 页面。如果需要放置在 SSL 页面中，请将
  --   “http://%s/...”
  -- 替换为
  --   “https://%s/...”
  -- Alignment Always active Assign the $phpAds_raw['html'] variable to your template Automatically close after Automatically collapse after Background color Banner padding Border color Bottom Center Close text Delay before banner is hidden Direction Hide the banner when the cursor is not moving Horizontal alignment Horizontal shift 图片 DHTML Javascript Left Left margin Left to right Limited 本地模式 Looping Middle 图片（不支持 Cookie） 使用 HTTPS 包含 noscript 标签 Pause Placement Comment Popup Tag Publisher code - Single Page Call Right Right margin Right to left Show close button Smooth movement Speed Style Top Transparancy of the hidden banner Transparent background Vertical alignment Vertical shift XML-RPC [Close] iFrame 