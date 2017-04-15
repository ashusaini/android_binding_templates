<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.java" />
	<instantiate from="src/app_package/MvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
    <instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
     <instantiate from="res/layout/list_item.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${listItemLayoutName}.xml" />

<open file="${escapeXmlAttribute(resOut)}/layout/${listItemLayoutName}.xml" />


</recipe>