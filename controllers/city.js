const axios = require("axios");

/**
 * Open conection with a public API in order to get cities information
 * 
 * @param {*} req 
 * @param {*} res 
 */
const getData = async (req, res) => {
    let url = '';

    const all = req.params.all;

    if ( all == '1') {
        url = 'https://wft-geo-db.p.rapidapi.com/v1/geo/adminDivisions';
    } else {
        url = `https://wft-geo-db.p.rapidapi.com/v1/geo/cities/${req.params.cityId}/locatedIn`
    }

    const options = {
        method: 'GET',
        url: url,
        headers: {
          'X-RapidAPI-Host': 'wft-geo-db.p.rapidapi.com',
          'X-RapidAPI-Key': process.env.RAPID_API_KEY
        }
      };
      
      axios.request(options).then(function (response) {
          res.json(response.data)
      }).catch(function (error) {
          console.error(error);
      });
}

module.exports = { getData };
