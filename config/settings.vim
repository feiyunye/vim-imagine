let dict = {}
let dict_end = {}
let dict_end_2 = {}

if (&filetype == 'html' || &filetype == '')
    let dict = {
                \'d'    : ['$', ''], 
                \'e'    : ['{{  }}', '3h'], 
                \'t'    : ['{%  %}', '3h'], 
                \'bl'    : ['{% block  %}{% endblock %}', '9h8h'], 
                \'k'    : ['{% endblock %}', ''], 
                \'url'  : ["url_for('')",'2h'], 
                \'gi' : ["getElementById('')", '2h'], 
                \'dgi' : ["document.getElementById('')", '2h'], 
                \'c'    : ['class=""', '1h'], 
                \'r'    : ['return ', ''],     
                \'cl'   : ["console.log()", '1h'], 
                \'al'    : ["alert()", '1h'],
                \'\sp'  : ['&nbsp;', ''], 
                \'\la'  : ['&laquo;',''],  
                \'\ra'  : ['&raquo;',''], 
                \'\he'  : ['&hellip;', ''], 
                \'f'    : ["unction() {\r}\<up>\<end>\<left>\<left>\<left>", '$'], 
                \'F'    : ["\<bs>function() {  }\<left>\<left>\<left>\<left>\<left>\<left>", '$'], 
                \}

    let dict_end = {
                \'E'    : ['{{  }}', '3h'], 
                \'T'    : ['{%  %}', '3h'], 
                \'B'    : ['{% block  %}', '3h'], 
                \'K'    : ['{% endblock %}', ''],
                \'U'    : ['url_for('''')','2h'], 
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'('    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'>'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \}
elseif (&filetype == 'pug' || &filetype == '')
    let dict = {
                \'nb'   : ["ng-bind=''", '1h'],
                \'nco'   : ["ng-controller=''", '1h'],
                \'ncli'   : ["ng-click=''", '1h'],
                \'ncla'   : ["ng-class=''", '1h'],
                \'nm'   : ["ng-model=''", '1h'],
                \'na'   : ["ng-app=''", '1h'],
                \'nif'   : ["ng-if=''", '1h'],
                \'nin'   : ["ng-init=''", '1h'],
                \'nr'   : ["ng-repeat=''", '1h'],
                \'no'   : ["ng-options=''", '1h'],
                \'np'   : ["ng-pluralize=''", '1h'],
                \'nh'   : ["ng-hide=''", '1h'],
                \'ns'   : ["ng-show=''", '1h'],
                \'nsw'  : ["ng-switch=''", '1h'],
                \'nw'   : ["ng-when=''", '1h'],
                \'link' : ["link(rel='stylesheet' href='')", '2h'],
                \'script': ["script(src='')", '2h'],
                \'a'    : ["a(href='')", '2h'],
                \'d'    : ['$', ''], 
                \'e'    : ['{{  }}', '3h'], 
                \'te'    : ['{%  %}', '3h'], 
                \'bl'    : ['{% block  %}{% endblock %}', '9h8h'], 
                \'k'    : ['{% endblock %}', ''], 
                \'url'  : ['url_for('''')','2h'], 
                \'gi' : ["getElementById('')", '2h'], 
                \'c'    : ["class=''", '1h'], 
                \'r'    : ['return ', ''],     
                \'cl'   : ["console.log()", '1h'], 
                \'al'    : ["alert()", '1h'],
                \'\sp'  : ['&nbsp;', ''], 
                \'\la'  : ['&laquo;',''],  
                \'\ra'  : ['&raquo;',''], 
                \'\he'  : ['&hellip;', ''], 
                \}

    let dict_end = {
                \'E'    : ['{{  }}', '3h'], 
                \'T'    : ['{%  %}', '3h'], 
                \'B'    : ['{% block  %}', '3h'], 
                \'K'    : ['{% endblock %}', ''],
                \'U'    : ['url_for('''')','2h'], 
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \}

elseif &filetype == 'css'
    let dict = {
                \'i' : ['!important;', ''], 
                \'c'    : ['// ', ''], 
                \}

    let dict_end = {
                \'{'    : ["\r\r\<up>\t", '$'], 
                \}

elseif &filetype == 'json'
    let dict = {
                \'c'    : ['// ', ''], 
                \}

    let dict_end = {
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'['    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \}

elseif &filetype == 'less'
    let dict = {
                \'a'    : ['@', ''], 
                \'c'    : ['// ', ''], 
                \'C'    : ["\<bs>/*  */\<left>\<left>\<left>", '$'], 
                \'d'    : ['$', ''], 
                \'n'    : ['&', ''], 
                \'i' : ['!important', ''], 
                \}

    let dict_end = {
                \'{'    : ["\r\r\<up>\t", '$'], 
                \}

elseif &filetype == 'scss'
    let dict = {
                \'a'    : ['@', ''], 
                \'c'    : ['// ', ''], 
                \'C'    : ["\<bs>/*  */\<left>\<left>\<left>", '$'], 
                \'d'    : ['$', ''], 
                \'s'    : ["\<bs>#{}\<left>", '$'], 
                \'n'    : ['&', ''], 
                \'i' : ['!important', ''], 
                \}

    let dict_end = {
                \'{'    : ["\r\r\<up>\t", '$'], 
                \'S'    : ["\<bs>#{}\<left>", '$'], 
                \}

elseif &filetype == 'javascript'
    let dict = {
                \'d'    : ['$', ''], 
                \'c'    : ['// ', ''], 
                \'im'   : ['import  from ', '6h'],
                \'co'   : ['const ', ''],
                \'con'  : ['constructor', ''],
                \'pro'  : ['prototype.', ''],
                \'ins'  : ['instanceof ', ''],
                \'has'  : ['hasOwnProperty()', '1h'],
                \'req'  : ["require('')", '2h'],
                \'t'    : ['this',''],
                \'r'    : ['return ', ''], 
                \'u'    : ['undefined', ''], 
                \'v'    : ['var ', ''],
                \'mr'   : ['Math.random()', ''],
                \'me'   : ['module.exports', ''],
                \'ex'   : ['export ', ''],
                \'ed'   : ['export default ', ''],
                \'cl'   : ["console.log()", '1h'], 
                \'al'    : ["alert()", '1h'],
                \'type' : ["Object.prototype.toString.call() === '[object ]'", '9h8h'], 
                \'push' : ["Array.prototype.push.apply()", '2h'],
                \'gi' : ["getElementById('')", '2h'], 
                \'dgi' : ["document.getElementById('')", '2h'], 
                \'gebtn' : ["getElementsByTagName('')[0]", '6h'], 
                \'f'    : ["unction () {\r}\<up>\<end>\<left>\<left>\<left>", '$'], 
                \'F'    : ["\<bs>function () {  }\<left>\<left>\<left>\<left>\<left>\<left>", '$'],
                \'a'    : ["\<bs>() => {}\<left>\<left>\<left>\<left>\<left>\<left>\<left>", '$'], 
                \'s'    : ["\<bs>() => \<left>\<left>\<left>\<left>\<left>", '$'], 
                \'S'    : ["\<bs> => \<left>\<left>\<left>\<left>", '$'], 
                \'pd'   : ["preventDefault();", ''],
                \}

    let dict_d3 = {
                \'sel'    : ["select('')", '2h'], 
                \'sea'    : ["selectAll('')", '2h'], 
                \}
    let dict_angular = {
                \'ap'    : ["append('')", '2h'],
                \'am'   : ["angular.module('')", '2h'], 
                \}
    let dict_react = {
                \'com'  : ["component", ''],
                \'rc'   : ["React.createClass({})", '2h'],
                \'rr'   : ["ReactDOM.render(< />)", '4h'],
                \}

    let dict_test = {
                \'des'  : ["cribe('', function () {\<cr>})\<up>\<end>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>", '$'],
                \'it'  : ["('', function () {\<cr>})\<up>\<end>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>\<left>", '$'],
                \'ete'  : ["expect().to.equal()", '9h3h'],
                \'etc'  : ["expect().to.contain()", '9h5h'],
                \}

    call extend(dict,dict_d3)
    call extend(dict,dict_angular)
    call extend(dict,dict_react)
    call extend(dict,dict_test)

    let dict_end = {
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'('    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'['    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'<'    : ["< />", '3h'], 
                \'>'    : ["\<cr>\<cr>\<esc>a\<esc>==a\<up>\<tab>", '$'], 
                \'E'    : [" === ", ''], 
                \'V'    : [" == ", ''], 
                \'A'    : [' && ', ''], 
                \'O'    : [' || ', ''], 
                \'P'    : [' += ', ''], 
                \'M'    : [' -= ', ''], 
                \'N'    : ['!', ''], 
                \'B'    : [' !== ', ''], 
                \'D'    : ['document', ''],
                \}

    let dict_end_2 = {
                \'DE'    : ['--', ''], 
                \'IC'    : ['++', ''], 
                \'GE': [' >= ', ''],
                \'LE': [' <= ', ''],
                \}

elseif &filetype == 'javascript.jsx'
    let dict = {
                \'c'    : ['// ', ''], 
                \'d'    : ['$', ''], 
                \'v'    : ['{  }', '2h'],
                \'t'    : ['this.',''],
                \'r'    : ['return ', ''], 
                \'u'    : ['undefined ', ''], 
                \'tp'   : ['this.props.', ''],
                \'im'   : ['import  from ', '6h'],
                \'co'   : ['const ', ''],
                \'con'  : ['constructor', ''],
                \'pro'  : ['prototype.', ''],
                \'ins'  : ['instanceof ', ''],
                \'has'  : ['hasOwnProperty()', '1h'],
                \'req'  : ["require('')", '2h'],
                \'mr'   : ['Math.random()', ''],
                \'me'   : ['module.exports', ''],
                \'ex'   : ['export ', ''],
                \'ed'   : ['export default ', ''],
                \'cl'   : ["console.log()", '1h'], 
                \'type' : ["Object.prototype.toString.call() === '[object ]'", '9h8h'], 
                \'push' : ["Array.prototype.push.apply()", '2h'],
                \'gi' : ["getElementById('')", '2h'], 
                \'dgi' : ["document.getElementById('')", '2h'], 
                \'gebtn' : ["getElementsByTagName('')[0]", '6h'], 
                \'f'    : ["\<bs>() {\r}\<up>\<end>\<left>\<left>\<left>", '$'], 
                \'F'    : ["\<bs>function () {  }\<left>\<left>\<left>\<left>\<left>\<left>", '$'],
                \'a'    : ["\<bs>() => {}\<left>\<left>\<left>\<left>\<left>\<left>\<left>", '$'], 
                \'s'    : ["\<bs>() => \<left>\<left>\<left>\<left>\<left>", '$'], 
                \'S'    : ["\<bs> => \<left>\<left>\<left>\<left>", '$'], 
                \'pd'   : ["preventDefault();", ''],
                \'cn'   : ["\<bs>\<bs>className=''\<left>", '$'],
                \}

    let dict_react = {
                \'com'  : ["component", ''],
                \'rc'   : ["React.Component {}", '1h'],
                \'rr'   : ["ReactDOM.render(< />)", '4h'],
                \}
    call extend(dict,dict_react)

    let dict_end = {
                \'V'    : ['={}', '1h'],
                \'Q'    : ["=''", '1h'],
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'('    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'['    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'<'    : ["< />", '3h'], 
                \'>'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'E'    : [" === ", ''], 
                \'F'    : ["\<bs>() {\r}\<up>\<end>\<left>\<left>\<left>", '$'], 
                \'S'    : ["\<bs> => ", '$'], 
                \'A'    : [' && ', ''], 
                \'O'    : [' || ', ''], 
                \'P'    : [' += ', ''], 
                \'M'    : [' -= ', ''], 
                \'I'    : ['++', ''], 
                \'D'    : ['--', ''], 
                \'N'    : ['!', ''], 
                \'B'    : [' !== ', ''], 
                \}
                "\'Q'    : [" == ", ''], 

    let dict_end_2 = {
                \'Ge': [' >= ', ''],
                \'Le': [' <= ', ''],
                \'Ne': [' !== ', ''],
                \}
elseif &filetype == 'coffee'
    let dict = {
                \'a'    : ['@', ''], 
                \'d'    : ['$', ''], 
                \'c'    : ['// ', ''], 
                \'r'    : ['return ', ''], 
                \'cl'   : ["console.log ", ''], 
                \'gi' : ["getElementById('')", '2h'], 
                \'f'    : ["() -> ", '5h'], 
                \'F'    : ["\<bs>function() {  }\<left>\<left>\<left>\<left>\<left>\<left>", '$'], 
                \'s'    : ["#{}", '1h'], 
                \'am'   : ["angular.module ''", '1h'], 
                \}

    let dict_end = {
                \'{'    : ["\<cr>\<left>\<cr>\<up>\<tab>", '$'], 
                \'['    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'S'    : ["#{}", '1h'], 
                \'E'    : [" === ", ''], 
                \'V'    : [" == ", ''], 
                \'A'    : [' && ', ''], 
                \'O'    : [' || ', ''], 
                \'P'    : [' += ', ''], 
                \'M'    : [' -= ', ''], 
                \'I'    : ['++', ''], 
                \'N'    : ['!', ''], 
                \'B'    : [' !== ', ''], 
                \}
elseif &filetype == 'markdown'
    let dict = {
                \'h1'   : ['# ', ''],
                \'h2'   : ['## ', ''],
                \'h3'   : ['### ', ''],
                \'h4'   : ['#### ', ''],
                \'js'   : ["\<bs>\<bs>```js\<cr>\<cr>```\<up>", '$'],
                \'c'    : ["``\<cr>```\<up>", '$']    
                \}
elseif &filetype == 'python'
    let dict = {
                \'l'    : ['lambda : ', '2h'],
                \'T'    : ['True', ''], 
                \'F'    : ['False', ''], 
                \'N'    : ['None', ''], 
                \'im'   : ['import ', ''], 
                \'fr'   : ['from ', ''], 
                \'fi'   : ['from   import ', '8h'], 
                \'p'    : ['print()', '1h'], 
                \'r'    : ['return ', ''], 
                \'s'    : ['self', ''], 
                \'u'    : ['____', '2h'], 
                \'"'    : ['""""""', '3h'], 
                \'a'    : ['@', ''], 
                \'c'    : ['# ', ''], 
                \}
    let dict_end = {
                \'{'    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'['    : ["\<cr>\<cr>\<up>\<tab>", '$'], 
                \'<'    : ["<<\<cr>\<cr>>>>\<up>", '$'], 
                \'V'    : [" == ", ''], 
                \'A'    : [' and ', ''], 
                \'O'    : [' or ', ''], 
                \'P'    : [' += ', ''], 
                \'M'    : [' -= ', ''], 
                \'I'    : ['++', ''], 
                \'N'    : [' not ', ''], 
                \'B'    : [' != ', ''], 
                \'U'    : ['____', '2h'], 
                \'E'    : [' is ', ''], 
                \}


                "\'red'  : ['redirect()', '1h'],
                "\'url'  : ['url_for('''')', '2h'], 
                "\'ren'  : ['render_template('''')', '2h'], 
                "\'f'    : ['flash('''')', '2h'], 
                "\'m'  : ["methods=[''"], '2h'],
                "\'me'  : ["methods=['GET', 'POST'"], ''],
elseif &filetype == 'vim'
    let dict = {
                \'r'    : ['return ', ''], 
                \'a'    : ['@', ''], 
                \'f'    : ["unction! ()\<cr>endfunction\<up>\<left>", '$'], 
                \'l'    : ["\<bs>for  in \<cr>endfor\<up>\<left>\<left>", '$'],
                \'aug'  : ["roup test\rautocmd \raugroup end\<up>\<end>", '$'], 
                \}
    let dict_end = {
                \'E'    : [' == ', ''], 
                \'L'    : [' <= ', ''],
                \'N'    : [' >= ', ''],
                \'P'    : [' += ', ''],
                \'M'    : [' -= ', ''],
                \'*'    : [' *= ', ''],
                \'D'    : [' /= ', ''],
                \'R'    : [' =~ ', ''],
                \'U'    : [' !~ ', ''],
                \'A'    : [' && ', ''],
                \'O'    : [' || ', ''],
                \'F'    : [' ! ' , ''],
                \'B'    : [' != ' , ''],
                \}
elseif &filetype == 'gitcommit'
    let module = 'cfgitems'
    let module = 'deploys'
    let module = 'tasks'
    let module = g:current_module
    let dict = {
                \'fe'    : ['feat(module: '.module.'): ', ''], 
                \'Fe'    : ['feat: ', ''], 
                \'fi'    : ['fix(module: '.module.'): ', ''], 
                \'Fi'    : ['fix: ', ''], 
                \'s'     : ['style(module: '.module.'): ', ''],
                \'r'     : ['refactor(module: '.module.'): ', ''], 
                \'c'     : ['chore(module: '.module.'): ', ''], 
                \}
    let dict_end = {
                \'L'    : [' <= ', ''],
                \'B'    : [' >= ', ''],
                \'P'    : [' += ', ''],
                \'M'    : [' -= ', ''],
                \'*'    : [' *= ', ''],
                \'D'    : [' /= ', ''],
                \'R'    : [' =~ ', ''],
                \'U'    : [' !~ ', ''],
                \'A'    : [' && ', ''],
                \'O'    : [' || ', ''],
                \'N'    : [' ! ' , ''],
                \'F'    : [' != ' , ''],
                \}
endif

let g:dict = dict
let g:dict_end = dict_end
let g:dict_end_2 = dict_end_2
"}}}
