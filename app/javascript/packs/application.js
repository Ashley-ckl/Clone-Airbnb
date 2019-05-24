import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initSweetalert } from '../plugins/init_sweetalert';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


initSweetalert('#sweetalert', {
      title: "Your booking was sent!",
      text: "Check the status on 'My Bookings'!",
      icon: "success",
      button: "My Bookings!"
      }, (value) => {
      if (value) {
        const link = document.querySelector('#booking-link');
        link.click();
  }
});
