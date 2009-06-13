// -------------------------------------------------------------------
// markItUp!
// -------------------------------------------------------------------
// Copyright (C) 2008 Jay Salvat
// http://markitup.jaysalvat.com/
// -------------------------------------------------------------------
// MarkDown tags example
// http://en.wikipedia.org/wiki/Markdown
// http://daringfireball.net/projects/markdown/
// -------------------------------------------------------------------
// Feel free to add more tags
// -------------------------------------------------------------------
markdownComatoseUploadSettings = {
	previewParserPath:	'',
	onShiftEnter:		{keepDefault:false, openWith:'\n\n'},
	onTab:				{keepDefault:false, openWith:'    '},
	markupSet: [

		{name:'Heading 1', key:'3', openWith:'# ', placeHolder:'Your title here...' },
		{name:'Heading 2', key:'4', openWith:'## ', placeHolder:'Your title here...' },
		{name:'Heading 3', key:'5', openWith:'### ', placeHolder:'Your title here...' },

		{separator:'---------------' },		
		{name:'Bold', key:'B', openWith:'**', closeWith:'**'},
		{name:'Italic', key:'I', openWith:'_', closeWith:'_'},
		{separator:'---------------' },
		{name:'Bulleted List', openWith:'- ' },
		{name:'Numeric List', openWith:function(markItUp) {
			return markItUp.line+'. ';
		}},
		{separator:'---------------' },
		{name:'Picture', key:'P', beforeInsert:function(){
  	    jQuery.get('/page_images/new', function(data){
  	      jQuery.facebox(data);
  	    })
		  }
		},
		{name:'File', key:'F', beforeInsert:function(){
  	    jQuery.get('/page_assets/new', function(data){
  	      jQuery.facebox(data);
  	    })
		  }
		},
		{separator:'---------------' },
		{name:'Link', key:'L', openWith:'[', closeWith:']([![Url:!:http://]!])', placeHolder:'Your text to link here...' },
		{name:'Email Link', openWith:'<', closeWith:'>', placeHolder:'somebody@somewhere.com' },
		{ name:'Sub-page Links', replaceWith:"{% for child in page.children %}\n{{ child.link }}\n{% endfor %}"},
		{ name:'Link to Level Up',     replaceWith:'{{ page.parent.link }}'},
		{separator:'---------------' },
		{ name:'Page Information', dropMenu: [
      { name:'Title',     replaceWith:'{{ page.title }}'},
      { name:'Author',   replaceWith:'{{ page.author }}'},
      { name:'Created Date', replaceWith:'{{ page.created_on }}'},
      { name:'Updated Date',     replaceWith:'{{ page.updated_on }}'},
      ]
    }

	]
}

// mIu nameSpace to avoid conflict.
miu = {
	markdownTitle: function(markItUp, char) {
		heading = '';
		n = jQuery.trim(markItUp.selection||markItUp.placeHolder).length;
		for(i = 0; i < n; i++) {
			heading += char;
		}
		return '\n'+heading;
	}
}