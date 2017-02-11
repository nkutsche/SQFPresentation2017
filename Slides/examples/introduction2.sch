<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
 <sch:pattern>
     <sch:rule context="b">
         <sch:report test=".//b" sqf:fix="resolveBold"
             >Recursive bold elements</sch:report>
         <sqf:fix id="resolveBold">
             <sqf:description>
                 <sqf:title
                     >Change the bold element into text
                 </sqf:title>
             </sqf:description>
             <sqf:replace match=".//b" select="text()"/>
         </sqf:fix>
     </sch:rule>
 </sch:pattern>   
</sch:schema>