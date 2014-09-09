var KeywordFinder = function(content, keywordsArray) {
  this.content = content;
  this.keywordsArray = keywordsArray;
  this.spanClasses;
}

KeywordFinder.prototype = {
  wrapKWinSpan : function( keyword ) {
    var reg = new RegExp('\\b(' + keyword + '(?:e(?=s))?s?)\\b', "gi");
    var result = this.content.replace(reg, "<span class='highlight'>$1</span>")
    this.content = result;
  },
  wrapKeyWords : function() {
    var _this = this;
    var kws = _this.keywordsArray;
    for (var i = 0; i < kws.length; i++){
      _this.wrapKWinSpan( kws[i] )
    }
  },
  prepSpanClasses : function() {

  },
  renderHighlighted : function() {
    var _this = this;
    $('#content').html(_this.content);
  }
}


var View = function(elements){
  this.toggleButton = elements.toggleButton;
  this.facadeButton = elements.facadeButton;
  this.createCommentButt = elements.createCommentButt;
  this.docControlShowing = false;
  this.newCommentShowing = false;

  var _this = this

  this.toggleButton.click(function(){
    _this.toggleDocControl();
  })
  this.facadeButton.click(function() {
    $('#landing-facade').fadeOut(1000)
  })

  this.createCommentButt.click(function(e){
    e.preventDefault();
    _this.toggleCommentBox();
  })

}

View.prototype = {
  toggleDocControl : function() {
    var _this = this;
    _this.docControlShowing = !_this.docControlShowing;
    if (_this.docControlShowing) {
      $('.control-aside').fadeIn(700);
    } else {
      $('.control-aside').fadeOut('slow');
    }
  },
  toggleCommentBox : function() {
    var _this = this;
    var _this = this;
    _this.newCommentShowing = !_this.newCommentShowing;
    if (_this.newCommentShowing) {
      $('.comment-aside').fadeIn(700);
    } else {
      $('.comment-aside').fadeOut('slow');
    }
  }
}

// $('#facade-center').click(function(){ $('#landing-facade').fadeOut()})


$( document ).ready(function() {


  $("button").on("click", function() {
    compareTimedReveal();
  })
  $(".compare-modal").on('click', function(){
    $(".compare-modal").fadeOut('slow');
  })

  $('#version-control').click(function(){
    toggleDocControl();
  })

  view = new View({
    'toggleButton' : $('#version-control'),
    'facadeButton' : $('#facade-center'),
    'createCommentButt' : $('.create-comment')
  })

  console.log('ready')
});


function compareTimedReveal() {
  $(".compare-modal").fadeIn(500, function(){
    $(".compare-modal").removeClass('hidden');
    iterativeReveal(300);
    // $(".you-think").removeClass('compare-hide');
    // $(".you-think").fadeIn('slow');
    // $(".we-think").removeClass('compare-hide');

  });

}

function iterativeReveal(time) {
  console.log('iterating')
  var elements = [ ".you-think", '.comp-arrow', '.we-think', '.compare-clear']

  $.each(elements, function( i, value ) {
    console.log(value)
    setTimeout( function(){ $(elements[i]).removeClass('compare-hide') }, time * (1.25 * (i+1)) )
  });
}

function toggleDocControl() {

}







