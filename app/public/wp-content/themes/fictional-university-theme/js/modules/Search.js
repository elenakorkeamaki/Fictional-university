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

    /* kun klikataan hakutoimintoon, käynnistyy this.openOverlay-toiminto,
       ja kun klikataan hakutoiminnosta pois, käynnistyy this.closeOverlay-toiminto,
       kun jotain missä vaan sivustolla painiketta painetaan "alas" käynnistyy this.keyPressDispatcher eli 
       tarkastetaan onko ctrl+s tai esc painettuna (tässä tapauksessa vain nämä) => avautuuko hakutoiminto,
       kun hakukentällä painiketta "nostetetaan", käynnistyy this.typingLogic joka tarkastelee näytetäänkö 
       spinneriä yms.

    */
    events() {
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closeButton.on("click", this.closeOverlay.bind(this));
        $(document).on("keydown", this.keyPressDispatcher.bind(this));
        this.searchField.on("keyup", this.typingLogic.bind(this));
        this.typingTimer;
    }

    //3. methods (function, action...)

    /* tässä hakuajastin nollataan aina kun hakutieto muuttuu, 
    näytetään "spinner" ladatessa 2000s ajan (aika nollautuu aina tiedon muuttuessa),
    kun hakukenttä tyhjennetään spinnerimerkki katoaa
    this.previousValueen arvoksi tulee aina käyttäjän syöttämä tieto
    */
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
    /* tämä tekee haun käyttäjän syöttämäle tekstille ja palauttaa tuloksen
    tulostaa otsikon General Information sekä listamuodossa hakutulokset, hakee haettavan tiedon sisältävät sisällöt linkkeineen
    Jos tuloksia löytyy, tulosta tulokset listamuodossa - jos taas ei, tulosta "No general information... 
    Lopussa myös lisättä latausspinneri, kun hakutekstiä muuttaa, se menee päälle */
    getResults() {
        $.getJSON('http://localhost:3000/wp-json/wp/v2/posts/?search=' + this.searchField.val(), posts => {
            this.resultsDiv.html(`
            <h2 class="search-overlay__section-title">General Information</h2>
            ${posts.length ? '<ul class="link-list min-list">' : '<p>No general information matches that search.</p>'}
                ${posts.map(item => `<li><a href="${item.link}">${item.title.rendered}</a></li>`).join('')}
            ${posts.length ? '</ul>' : ''}
            `);
        this.isSprinnerVisible = false;
        });
    }
    
     // tämä toiminto avaa hakutoiminnon 
    openOverlay() {
        this.searchOverlay.addClass("search-overlay--active");
        $("body").addClass("body-no-scroll");
        console.log("our open method just ran!");
        this.isOverlayOpen = true;
    }
    // tämä toiminto sulkee hakutoiminnon 
    closeOverlay() {
        this.searchOverlay.removeClass("search-overlay--active");
        $("body").removeClass("body-no-scroll");
        console.log("our close method just ran!");
        this.isOverlayOpen = false;
    }

    // mitä näppäimiä käyttäen avautuu ja sulkeutuu hakutoiminto(83 = ctrl +s, 27 = esc)
    keyPressDispatcher(e) {

        if (e.keyCode == 83 && !this.isOverlayOpen && !$("input, textarea").is(':focus')) {
            this.openOverlay();
        }
        if(e.keyCode == 27 && this.isOverlayOpen) {
            this.closeOverlay();
        }
    }
}

export default Search;