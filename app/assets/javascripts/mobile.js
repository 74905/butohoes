// class MobileMenu{
//   constructor(){
//     this.DOM = {};
//     this.DOM.btn = document.querySelector('.mobile-menu-btn');
//     this.DOM.container = document.querySelector('.global-container');
//     this.DOM.menu = document.querySelector('.mobile-menu');
//     this.eventType = this._getEventType();
//     this._addEvent();
//   }
//  _getEventType(){
//    return window.ontouchstart ? 'touchstart' : 'click';
//  }
//   _toggle(){
//     this.DOM.container.classList.toggle('menu-open');
//     this.DOM.menu.classList.toggle('menu-open');
//   }
//   _addEvent(){
//     this.DOM.btn.addEventListener('click', this._toggle.bind(this));
//   }
// }
// new MobileMenu();

$(document).ready(function(){
  let clickEventType = ((window.ontouchstart!==null)?'click':'touchstart');
  $('.mobile-menu-btn').on(clickEventType, function(){
    $('.global-container').toggleClass('menu-open');
    $('.mobile-menu').toggleClass('menu-open');
  })
})

