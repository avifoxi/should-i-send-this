var View = function(elements){
  this.toggleButton = elements.toggleButton;
  this.createCommentButt = elements.createCommentButt;
  this.feedbackPointer = elements.feedbackPointer;
  this.sentVal = 0;

  this.docControlShowing = false;
  this.newCommentShowing = false;

  var _this = this

  this.toggleButton.click(function(){
    _this.toggleDocControl();
  })


  this.createCommentButt.click(function(e){
    e.preventDefault();
    _this.toggleCommentBox();
  })

  this.feedbackPointer.click(function() {
    _this.compareTimedReveal();
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
  },
  compareTimedReveal : function() {
    var _this = this;
    $(".compare-modal").fadeIn(500, function(){
      $(".compare-modal").removeClass('hidden');
      _this.iterativeReveal(300);
    });
  },
  iterativeReveal : function(time) {
    var elements = [ ".you-think", '.comp-arrow', '.we-think', '.compare-clear']
    $.each(elements, function( i, value ) {
      setTimeout( function(){ $(elements[i]).removeClass('compare-hide') }, time * (1.25 * (i+1)) )
    });
  },
  getSentVal : function(){
    this.sentVal = parseFloat($('#sentVal').html() );
    var butt = parseFloat($('#sentVal').html() );
    console.log(butt)
  },
  callibrateSentiment : function(){
    var _this = this;
    _this.getSentVal();
    var sentVal = _this.sentVal;
    var colorVars = _this.sentimentGrader( sentVal);
    console.log(colorVars)
    var bgParams = "rgba(0, 0, 0, 0) -webkit-linear-gradient(left, red " + colorVars.negVal + "%, green " + colorVars.posVal + "%) repeat scroll 0% 0% / auto padding-box border-box";
    $('.sentiment-gradient-bar').css('background', bgParams);

  },
  sentimentGrader : function(sentVal) {
    var posVal;
    var negVal;
    if (sentVal < 0) {
      posVal = 100;
      negVal = Math.abs(sentVal) * 100 ;
    } else {
      negVal = 0;
      posVal = ( 1 - sentVal ) * 100;
    }
    return {'negVal': negVal, 'posVal': posVal}
  }
}



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
    'createCommentButt' : $('.create-comment'),
    'feedbackPointer' : $('.pointer')
  })

  view.callibrateSentiment();
  console.log('ready')
});
