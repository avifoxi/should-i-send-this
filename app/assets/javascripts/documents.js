var View = function(elements){
  this.sentVal = 0;
  this.fullContent = '';
  this.shortened = '';

  this.truncated = false;
  var _this = this
}


View.prototype = {
  getContent : function() {
    var _this = this;
    this.fullContent = $('.version-content').html();
    this.shortened = _this.fullContent.substr(0, 200)+'&hellip;';
    this.setContent();
  },
  setContent : function() {
    var _this = this;
    if (_this.truncated) {
      _this.expand();
      $('.content-expand').html('less');
    } else {
      _this.truncate();
      $('.content-expand').html('more');
    }
    this.truncated = !_this.truncated;
  },
  truncate : function () {
    var _this = this;
    $('.version-content').html(_this.shortened);
  },
  expand : function (){
    var _this = this;
    $('.version-content').html(_this.fullContent);
  },
  getSentVal : function(){
    this.sentVal = parseFloat($('#sentVal').html() );
  },
  callibrateSentiment : function(){
    var _this = this;
    _this.getSentVal();
    var sentVal = _this.sentVal;
    var colorVars = _this.sentimentGrader( sentVal);
    var bgParams = "rgba(0, 0, 0, 0) -webkit-linear-gradient(left, #2B2B2B " + colorVars.negVal + "%, #2ECC40 " + colorVars.posVal + "%) repeat scroll 0% 0% / auto padding-box border-box";
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


  view = new View({
  })

  view.callibrateSentiment();
  view.getContent();
  
  $('.content-expand').click(function() {
    view.setContent();
  })
  
  $('#version-options').click(function (){
    $(".dropdown").slideToggle();
  })
  

});

