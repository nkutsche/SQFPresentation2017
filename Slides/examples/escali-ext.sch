<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:es="http://www.escali.schematron-quickfix.com/" xml:lang="en" queryBinding="xslt2">
    <sch:title>Example for text phrase errors</sch:title>
    <sch:pattern>
        <sch:rule context="text()" es:regex="quick-fix|quick\sfix" es:regexFlags="i">
            <sch:report test="true()">Please use "QuickFix".</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>