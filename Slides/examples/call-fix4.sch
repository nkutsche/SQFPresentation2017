<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <title>People &#x2013; test</title>
    <sqf:fixes>
        <sqf:fix id="movePerson">
            <sqf:description>
                <sqf:title>Move the element and the element 
                    before at the end of the document.</sqf:title>
            </sqf:description>
            <sqf:call-fix ref="moveQuickFix">
                <sqf:with-param name="moveContext" select="."/>
                <sqf:with-param name="moveTo" select="/*"/>
            </sqf:call-fix>
            <sqf:call-fix ref="moveQuickFix">
                <sqf:with-param name="moveContext" select="preceding-sibling::*[1]"/>
                <sqf:with-param name="moveTo" select="/*"/>
            </sqf:call-fix>
        </sqf:fix>
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