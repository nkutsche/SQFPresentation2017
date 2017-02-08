<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <title>People &#x2013; test</title>
    <sqf:fixes>
        
            
            
                
                
            
            
                
                
            
            
            
            
        
        <sqf:fix id="moveQuickFix">
            <sqf:param name="moveContext" required="yes"/>
            <sqf:param name="moveTo" required="yes"/>
            <sqf:description>
                <sqf:title>Move the element <name path="$moveContext"/> 
                    into the element <name path="$moveTo"/>.</sqf:title>
            </sqf:description>
            <sqf:add match="$moveTo" position="last-child" select="$moveContext"/>
            <sqf:delete match="$moveContext"/>
        </sqf:fix>
    </sqf:fixes>
</schema>