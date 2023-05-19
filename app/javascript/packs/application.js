// app/javascript/packs/application.js

import { hello } from './greeting.js';
import './sweetalert2_init';


document.addEventListener('DOMContentLoaded', () => {
  console.log(hello());
});
