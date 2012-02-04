xquery version "1.0";

import module namespace templates="http://exist-db.org/xquery/templates" at "templates.xql";

declare option exist:serialize "method=html5 media-type=text/html enforce-xhtml=yes";

declare variable $modules :=
    <modules>
        <module prefix="config" uri="http://exist-db.org/xquery/apps/config" at="config.xql"/>
        <module prefix="app" uri="http://exist-db.org/xquery/app" at="app.xql"/>
        <module prefix="acl" uri="http://atomic.exist-db.org/xquery/atomic/acl" at="acl.xql"/>
        <module prefix="ext" uri="http://atomic.exist-db.org/xquery/extensions" at="extensions.xql"/>
    </modules>;

let $content := request:get-data()
return
    templates:apply($content, $modules, ())