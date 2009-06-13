## Comatose CMS Ancestors method

This plugin makes the "ancestors" method available to the @page object in your Comatose layouts.  This does not allow access to the method via the CMS administrative area, as that would potentially give content managers access to pages above that which they are permitted.

### Example Usage

    @page.ancestors.reverse.collect {|crumb| link_to crumb.title, crumb.link }.join(' > ')
    Home > About Us > History > Founders
    
### Dependencies

[Comatose](http://github.com/darthapo/comatose.git) requires [Acts as Tree](http://github.com/rails/acts_as_tree.git), so those will obviously be required.
  
### Installation
  
    script/plugin install git://github.com/baldwindavid/comatose_ancestors.git
    
Copyright (c) 2009 David Baldwin ([github.com/baldwindavid](http://github.com/baldwindavid))