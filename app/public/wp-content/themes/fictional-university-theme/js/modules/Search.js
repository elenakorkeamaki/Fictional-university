import $ from 'jquery';

class Search {
    //1. describe and create/initiate our object
    constructor() {
       this.openButton = $(".js-search-trigger");
       this.closeButton = $(".search-overlay__close");
       this.searchOverlay = $(".search-overlay");
       this.searchField =  $("#search-term");
       this.events();
       this.isOverlayOpen = false;
       this.isSprinnerVisible = false;
       this.resultsDiv = $("#search-overlay__results");
       this.previousValue;

    }

    //2. events
    events() {
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closeButton.on("click", this.closeOverlay.bind(this));
        $(document).on("keydown", this.keyPressSispatcher.bind(this));
        this.searchField.on("keyup", this.typingLogic.bind(this));
        this.typingTimer;
    }

    //3. methods (function, action...)
    typingLogic() {
        if(this.searchField.val() != this.previousValue) {
            clearTimeout(this.typingTimer);

            if(this.searchField.val()) {
                if(!this.isSprinnerVisible) {
                    this.resultsDiv.html('<div class="spinner-loader"></div>')
                    this.isSprinnerVisible = true;
                }
                this.typingTimer = setTimeout(this.getResults.bind(this), 2000);
            } else {
                this.resultsDiv.html('');
                this.isSprinnerVisible = false;
            }

            
        }
       
        this.previousValue = this.searchField.val();
    }

    getResults() {
        this.resultsDiv.html("Imagine real search results here...");
        this.isSprinnerVisible = false;
    }
    
    openOverlay() {
        this.searchOverlay.addClass("search-overlay--active");
        $("body").addClass("body-no-scroll");
        console.log("our open method just ran!");
        this.isOverlayOpen = true;
    }

    closeOverlay() {
        this.searchOverlay.removeClass("search-overlay--active");
        $("body").removeClass("body-no-scroll");
        console.log("our close method just ran!");
        this.isOverlayOpen = false;
    }
    keyPressSispatcher(e) {

        if (e.keyCode == 83 && !this.isOverlayOpen) {
            this.openOverlay();
        }
        if(e.keyCode == 27 && this.isOverlayOpen) {
            this.closeOverlay();
        }
    }
}

export default Search;