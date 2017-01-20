/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    var tags = [
    { value: 'Afghan', data: 'AFN' },
    { value: 'Albanian', data: 'ALL' },
    { value: 'Algerian', data: 'DZD' },
    { value: 'European', data: 'EUR' },
    { value: 'Angolan', data: 'AOA' },
    { value: 'Argentine', data: 'ARS' },
    { value: 'Armenian', data: 'AMD' },
    { value: 'Aruban', data: 'AWG' },
    { value: 'Australian', data: 'AUD' },
    { value: 'Azerbaijani', data: 'AZN' },
    { value: 'Bahamian', data: 'BSD' },
    { value: 'Bahraini', data: 'BHD' },
    { value: 'Bangladeshi', data: 'BDT' },
    { value: 'Barbadian', data: 'BBD' },
    { value: 'Belarusian', data: 'BYR' },
    { value: 'Belize', data: 'BZD' },
    { value: 'West African CFA', data: 'XOF' },
    { value: 'Bhutanese', data: 'BTN' },
    { value: 'Bolivian', data: 'BOB' },
    { value: 'Bosnia-Herzegovina konvertibilna', data: 'BAM' },
    { value: 'Botswana', data: 'BWP' },
    { value: 'Brazilian', data: 'BRL' },
    { value: 'Brunei', data: 'BND' },
    { value: 'Bulgarian', data: 'BGN' },
    { value: 'Burundi', data: 'BIF' },
    { value: 'Cagliari', data: 'CA' },
    { value: 'Cambodian', data: 'KHR' },
    { value: 'Central African CFA', data: 'XAF' },
    { value: 'Canadian', data: 'CAD' },
    { value: 'Cape Verdean', data: 'CVE' },
    { value: 'Cayman Islands', data: 'KYD' },
    { value: 'Central African CFA', data: 'GQE' },
    { value: 'CFP', data: 'XPF' },
    { value: 'Chilean', data: 'CLP' },
    { value: 'Chinese', data: 'CNY' },
    { value: 'Colombian', data: 'COP' },
    { value: 'Comorian', data: 'KMF' },
    { value: 'Congolese', data: 'CDF' },
    { value: 'Costa Rican', data: 'CRC' },
    { value: 'Croatian', data: 'HRK' },
    { value: 'Cuban', data: 'CUC' },
    { value: 'Czech', data: 'CZK' },
    { value: 'Danish', data: 'DKK' },
    { value: 'Djiboutian', data: 'DJF' },
    { value: 'Dominican', data: 'DOP' },
    { value: 'Egyptian', data: 'EGP' },
    { value: 'East Caribbean', data: 'XCD' },
    { value: 'Eritrean', data: 'ERN' },
    { value: 'Estonian', data: 'EEK' },
    { value: 'Ethiopian', data: 'ETB' },
    { value: 'Falkland Islands', data: 'FKP' },
    { value: 'Fijian', data: 'FJD' },
    { value: 'Gambian', data: 'GMD' },
    { value: 'Georgian', data: 'GEL' },
    { value: 'Ghanaian', data: 'GHS' },
    { value: 'Gibraltar', data: 'GIP' },
    { value: 'Guatemalan', data: 'GTQ' },
    { value: 'Guinean', data: 'GNF' },
    { value: 'Guyanese', data: 'GYD' },
    { value: 'Haitian', data: 'HTG' },
    { value: 'Honduran', data: 'HNL' },
    { value: 'Hong Kong', data: 'HKD' },
    { value: 'Hungarian', data: 'HUF' },
    { value: 'Icelandic', data: 'ISK' },
    { value: 'Indian', data: 'INR' },
    { value: 'Indonesian', data: 'IDR' },
    { value: 'Iranian', data: 'IRR' },
    { value: 'Iraqi', data: 'IQD' },
    { value: 'Israeli', data: 'ILS' },
    { value: 'Jamaican', data: 'JMD' },
    { value: 'Japanese', data: 'JPY' },
    { value: 'Jordanian', data: 'JOD' },
    { value: 'Kazakhstani', data: 'KZT' },
    { value: 'Kenyan', data: 'KES' },
    { value: 'North Korean', data: 'KPW' },
    { value: 'South Korean', data: 'KRW' },
    { value: 'Kuwaiti', data: 'KWD' },
    { value: 'Kyrgyzstani', data: 'KGS' },
    { value: 'Lao', data: 'LAK' },
    { value: 'Latvian', data: 'LVL' },
    { value: 'Lebanese', data: 'LBP' },
    { value: 'Lesotho', data: 'LSL' },
    { value: 'Liberian', data: 'LRD' },
    { value: 'Libyan', data: 'LYD' },
    { value: 'Lithuanian', data: 'LTL' },
    { value: 'Macanese', data: 'MOP' },
    { value: 'Macedonian', data: 'MKD' },
    { value: 'Malagasy', data: 'MGA' },
    { value: 'Malawian', data: 'MWK' },
    { value: 'Malaysian', data: 'MYR' },
    { value: 'Maldivian', data: 'MVR' },
    { value: 'Mauritanian', data: 'MRO' },
    { value: 'Mauritian', data: 'MUR' },
    { value: 'Mexican', data: 'MXN' },
    { value: 'Moldovan', data: 'MDL' },
    { value: 'Mongolian', data: 'MNT' },
    { value: 'Moroccan', data: 'MAD' },
    { value: 'Mozambican', data: 'MZM' },
    { value: 'Myanma', data: 'MMK' },
    { value: 'Namibian', data: 'NAD' },
    { value: 'Nepalese', data: 'NPR' },
    { value: 'Netherlands Antillean', data: 'ANG' },
    { value: 'New Zealand', data: 'NZD' },
    { value: 'Nicaraguan', data: 'NIO' },
    { value: 'Nigerian', data: 'NGN' },
    { value: 'Norwegian', data: 'NOK' },
    { value: 'Omani', data: 'OMR' },
    { value: 'Pabillonis', data: 'PBL' },
    { value: 'Pakistani', data: 'PKR' },
    { value: 'Panamanian', data: 'PAB' },
    { value: 'Papua New Guinea', data: 'PGK' },
    { value: 'Paraguayan', data: 'PYG' },
    { value: 'Peruvian', data: 'PEN' },
    { value: 'Philippine', data: 'PHP' },
    { value: 'Polish', data: 'PLN' },
    { value: 'Qatari', data: 'QAR' },
    { value: 'Romanian', data: 'RON' },
    { value: 'Russian', data: 'RUB' },
    { value: 'Rwandan', data: 'RWF' },
    { value: 'Saint Helena', data: 'SHP' },
    { value: 'Samoan', data: 'WST' },
    { value: 'Sao Tome and Principe', data: 'STD' },
    { value: 'Saudi', data: 'SAR' },
    { value: 'Serbian', data: 'RSD' },
    { value: 'Sestu', data: 'ST' },
    { value: 'Seychellois', data: 'SCR' },
    { value: 'Sierra Leonean', data: 'SLL' },
    { value: 'Singapore', data: 'SGD' },
    { value: 'Slovak ', data: 'SKK' },
    { value: 'Solomon Islands', data: 'SBD' },
    { value: 'Somali', data: 'SOS' },
    { value: 'South African', data: 'ZAR' },
    { value: 'Sudanese', data: 'SDG' },
    { value: 'Sri Lankan', data: 'LKR' },
    { value: 'Sudanese', data: 'SDG' },
    { value: 'Surinamese', data: 'SRD' },
    { value: 'Swazi', data: 'SZL' },
    { value: 'Swedish', data: 'SEK' },
    { value: 'Swiss', data: 'CHF' },
    { value: 'Syrian', data: 'SYP' },
    { value: 'New Taiwan', data: 'TWD' },
    { value: 'Tajikistani', data: 'TJS' },
    { value: 'Tanzanian', data: 'TZS' },
    { value: 'Thai', data: 'THB' },
    { value: 'Paanga', data: 'TOP' },
    { value: 'Trinidad and Tobago', data: 'TTD' },
    { value: 'Tunisian', data: 'TND' },
    { value: 'Turkish', data: 'TRY' },
    { value: 'Turkmen', data: 'TMM' },
    { value: 'Ugandan', data: 'UGX' },
    { value: 'Ukrainian', data: 'UAH' },
    { value: 'United Arab Emirates', data: 'AED' },
    { value: 'British', data: 'GBP' },
    { value: 'United States', data: 'USD' },
    { value: 'Uruguayan', data: 'UYU' },
    { value: 'Uzbekistani', data: 'UZS' },
    { value: 'Vanuatu', data: 'VUV' },
    { value: 'Venezuelan', data: 'VEB' },
    { value: 'Vietnamese', data: 'VND' },
    { value: 'Yemeni', data: 'YER' },
    { value: 'Zambian', data: 'ZMK' },
    { value: 'Zimbabwean', data: 'ZWD'}
  ];


  function checkAnswer(){
      
    // trasformo il text preso tutto in minuscolo e poi metto maiuscola la prima lettera, 
    // cosi' da trovarla nel vettore (per eventuali errori tra low/uppercase)
    citta = document.getElementById('autocomplete').value;
    /*citta2 = citta1.toLowerCase();
    citta = citta2.charAt(0).toUpperCase() + citta2.slice(1);;*/
    
      var result = false;
      // cerco tra le città
      for (var i = 0; i < tags.length; i++) { 
        if (tags[i].value === citta) { 
            result = true;
            break;
            } 
      }
      
      // se trova la città reindirizza 
      if (result){
           document.getElementById("autocomplete").value = citta;
           $('#form-action').attr('action','Home');
           $('#form-action').submit();
      } 
      
      // altrimenti  visualizza un messaggio di errore
      else{
          document.getElementById("errormsg").style.visibility = 'visible';
          document.getElementById("errormsg").style.display = 'block';
      }
      return false;

  }
