��    ;      �  O   �        f  	  �   p     	  ]   2
  �  �
  �   h  �       �  m    �   �  	   I     S  8   a     �     �     �     �     �     �       
          	   5  -   ?     m     �  	   �  "   �     �     �     �     �     �     �                    (     5     G     M  	   _  !   i     �     �     �     �     �     �     �     �  !   �                *     9     E  
   M  �  X    �  �      :  �  Z       n  �       E   '  V!  �  ~"  �   A$  
   %     "%  ;   0%     l%     �%     �%     �%  	   �%  	   �%     �%     �%  &   �%     &  4   &     O&     f&  	   &  "   �&     �&     �&     �&     �&     �&     �&  	   �&     	'     '     $'     0'     A'     G'  	   \'      f'     �'     �'     �'     �'     �'     �'     �'  	   �'  %   �'     (     -(     B(     Y(     e(  
   m(            "            ;   4         /      0   ,         7             9   '   !   (      +                      
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
  -- Alignment Always active Assign the $phpAds_raw['html'] variable to your template Automatically close after Automatically collapse after Background color Banner padding Border color Bottom Center Close text Delay before banner is hidden Direction Hide the banner when the cursor is not moving Horizontal alignment Horizontal shift Image Tag Interstitial or Floating DHTML Tag Javascript Tag Left Left margin Left to right Limited Local Mode Tag Looping Middle No Cookie Image Tag Option - SSL Option - noscript Pause Placement Comment Popup Tag Publisher code - Single Page Call Right Right margin Right to left Show close button Smooth movement Speed Style Top Transparancy of the hidden banner Transparent background Vertical alignment Vertical shift XML-RPC Tag [Close] iFrame Tag Project-Id-Version: revive-adserver
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2008-09-25 09:12+0100
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-SourceCharset: utf-8
X-Poedit-KeywordsList: translate
Last-Translator: mbeccati <matteo@beccati.com>
Language-Team: Dutch
Language: nl_NL
X-Generator: crowdin.com
X-Poedit-SearchPath-0: plugins_repo/openXInvocationTags/extensions/invocationTags/oxInvocationTags/
X-Crowdin-Project: revive-adserver
X-Crowdin-Language: nl
X-Crowdin-File: /plugins_repo/openXInvocationTags/plugins/etc/oxInvocationTags/_lang/po/en.po
 
  * Aangezien het onderstaande PHP script probeert om cookies te bewaren, moet het worden aangeroepen
  * voordat enige output naar de browser van de gebruiker wordt gestuurd. Zodra het script
  * klaar is, zal de HTML code die nodig is om de advertentie te tonen
  * worden opgeslagenin de $adArray array (zodat meerdere advertenties kunnen worden verkregen
  * door meerdere tags te gebruiken). Zodra alle advertenties zijn opgevraagd, en alle
  * cookies bewaard, kunt u de output naar de browser van de gebruiker sturen, and
  * de inhoud van $adArray afbeelden waar dat van toepassing is.
  *
  * Voorbeeld code for het afbeelden vanuit $adArray bevindt zich aan het einde van de tag -
  * U dient dit te verwijderen voordat u de tag in productie gebruikt.
  * Denk er aan dat u heeft gecontroleerd dat de PEAR::XML-RPC package is geinstalleerd
  * en beschikbaar voor dit script, en dat u de 
  * lib/xmlrpc/php/openads-xmlrpc.inc.php library file heeft gekopieerd. U moet misschien de 
  * 'include_path' direct hieronder aanpassen.
  */ 
  * Vergeet niet om de tekst '{clickurl}' text in de tag te vervangen door
  * de click tracking URL, als deze advertentie geleverd moet worden via een ad server van een derde partij
  * (niet Revive Adserver).
  * 
  * Als iFrames niet worden ondersteund door de browser van de kijker, dan toont deze
  * tag alleen image banners. Deze banners hebben geen breedte of hoogte,
  * dus als u afmetingen voor deze advertenties wilt bepalen
  * voordat deze vertoond worden, dan moet u deze informatie toevoegen aan de <img>
  * tag. 
 * Vervang overal {random} door
 * een gegenereerde willekeurig getal (of timestamp). 
 * 
  * Het noscript gedeelte van deze tag toont alleen image banners. Er
  * is geen breedte of hoogte ingesteld in deze, dus als u wilt dat deze tags
  * afmetingen instellen voordat de ad wordt vertoond, dan dient u deze 
  * informatie toe te voegen aan <img> tag.
  *
  * Als u liever niet wilt omgaan met de eigenaardigheden van het noscript
  * gedeelte, verwijder dan de tag (vanaf <noscript>... tot en met </noscript>).
  * Gemiddeld wordt de noscript tag aangeroepen door minder dan 1% van de gebruikers van
  * internet. 
  * Deze tag is gegeneereerd voor gebruik op pagina's zonder SSL page. Als deze tag
  * geplaatst moet worden op een SSL page, verander dan 
  *   'http://%s/...'
  * in
  *   'https://%s/...'
  * 
  * Deze tag vertoont alleen afbeeldings-banners. Er is geen breedte of hoogte ingesteld
  * in deze banners, dus als u wilt dat deze tags daarvoor ruimte instellen voordat de
  * advertentie wordt vertoond, dan dient u deze informatie toe te voegen aan de
  * <img> tag. 
  *------------------------------------------------------------*
  * Deze interstitial invocation code vereist dat de afbeeldingen uit:
  * /www/images/layerstyles/%s/...
  * toegangelijk zijn via: http(s)://%s/layerstyles/%s/...
  *------------------------------------------------------------* 
  -- Vergeet niet om de 'Insert_Clicktrack_URL_Here' tekst hieronder te vervangen door
  -- de click tracking URL als deze advertentie geleverd moet via een ad server van een derde partij
  --  (niet Revive Adserver).
  --
  -- Vergeet niet om de 'Insert_Random_Number_Here' tekst te vervangen door
  -- een cache-buster random getal, elke keer als deze tag wordt uitgeleverd door een ad server van een derde partij
  -- (niet Revive Adserver).
  -- 
  -- Deze tag is aangemaakt voor gebruik op een niet-SSL pagina. Als deze tag
  -- moet worden geplaatst op een SSL page, verander dan alle voorkomende 
  --   'http://%s/...'
  -- in
  --   'https://%s/...'
  -- Uitlijning Altijd actief De $phpAds_raw ['html'] variabele toewijzen aan uw sjabloon Automatisch sluiten na Automatisch inklappen na achtergrondkleur Banner opvulling Randkleur Onderkant Gecentreerd Sluit tekst Tijd voordat de banner verborgen wordt Richting Verberg de banner wanneer de muiscursor niet beweegt Horizontale uitlijning Horizontale verschuiving Image Tag Interstitial of Floating DHTML Tag Javascript Tag Links Linker marge Van links naar rechts Gelimiteerd Local Mode Tag Herhalend Midden No Cookie Image Tag Optie - SSL Optie - noscript Pauze Plaatsing commentaar Popup Tag Uitgever code - Single Page Call Rechts Rechter marge Van rechts naar links Toon sluit knop Vloeiende beweging Snelheid Stijl Bovenkant Transparantie van de verborgen banner Transparante achtergrond Verticale uitlijning Verticale verschuiving XML-RPC Tag [Sluit] iFrame Tag 