$(document).on('ready page:load', function () {
  var $sentence = $('#inputText')
  var $quote = $('#displayQuote')

  function showText () {    // get version with .done, .fail and .always promise functions
    $.get({
      url: 'http://www.omdbapi.com/?t=logan'
    }).done(function (data) {
      console.log(data)
      $('h1').text(data.Title)
      $('#plot').text(data.Plot)
    }).fail(function () {
      alert('request is failed')
    }).always(function () {
      console.log('Always run this!')
    })
  }
  $('#button').on('click', showText)

  $('.ujs').on('ajax:success', function (req, data) {
    $('h1').text(data.Title)
    $('#plot').text(data.Plot)
  })

  function renderText () {
    $.get({
      url: 'https://yoda.p.mashape.com/yoda',
      headers: {
        'X-Mashape-Key': 'nQvICD6sAomsh925mCPOSVuBevwfp1WZeubjsnNxQRdyy1QIz6'
      }
    }, {
      sentence: $sentence.val(), // Updating parameters of the form params
      something: 'hello'
    }).done(function (output) {
      $('h1').text(output)
    })
  }

  $('#grabThis').on('click', renderText)

  function quoteText () {
    $.ajax({
      url: 'https://andruxnet-random-famous-quotes.p.mashape.com/',
      headers: {
        'X-Mashape-Key': 'nQvICD6sAomsh925mCPOSVuBevwfp1WZeubjsnNxQRdyy1QIz6'
      },
      method: 'POST',
      data: {cat: 'movies'},
      success: function (data) {
        var resObj = JSON.parse(data)
        $quote.text(resObj.quote)
        // console.log(data)
      }
    })
  }

  function interv () {
    var num = setInterval(quoteText, 3000)

    function setInt () {
      num
    }
    function clearInt () {
      clearInterval(num)
    }

    return {
      setInt: setInt,
      clearInt: clearInt
    }
  }

  var runInterv = interv()

  $('#quoteBtn').on('click', runInterv.setInt)
  $('#stopQuote').on('click', runInterv.clearInt)
})
