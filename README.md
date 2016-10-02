## XSLT Menu

This project is mostly a curiosity.  It contains a simple XSLT
stylesheet for displaying an expanding menu, where the entire ancestry
and all immediate children of the current node will be displayed at
all times, as well as all other top-level entries.

For example, you can have a menu.xml file like: 

```
<menu>
  <menuitem text="Item 1" url="1.xml" />
  <menuitem text="Item 2" url="2.xml">
    <menuitem text="Sub 1" url="2S1.xml" />
    <menuitem text="Sub 2" url="2S2.xml" />
    <menuitem text="Sub 3" url="2S3.xml" />
  </menuitem>
  <menuitem text="Item 3" url="3.xml">
    <menuitem text="Sub 1" url="3S1.xml">
      <menuitem text="SubSub 1" url="3S1S1.xml" />
      <menuitem text="SubSub 1" url="3S1S2.xml" />
    </menuitem>
    <menuitem text="Sub 2" url="3S2.xml" />
  </menuitem>
</menu>
```

And the XML pages can look like (here is 1.xml, for example):

```
<?xml version="1.0" encoding="ISO-8859-1"?>

<?xml-stylesheet href="style.xsl" type="text/xsl"?>
<page uri="1.xml">
<!--arbitrary HTML stuff-->
</page>
```

And the content of the page will be rendered with the menu rendered in
a sidebar to the left with the appropriate expansion.  