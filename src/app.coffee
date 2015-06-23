
class AppController
  constructor: (@interval) ->
    ctrl = @

    ctrl.entries = [
      {
        time: new Date
        title: "Hello"
        comments: [
          "Did somthing"
          "Did somthing more"
        ]
      }
      {
        time: new Date
        title: "Other Date"
        comments: [
          "This shit"
          "Some stuff"
        ]
      }
    ]

    @interval ->
      ctrl.now = new Date()
    , 1000




AppController.$inject = ['$interval']


angular.module "planck", []
  .controller "AppController", AppController

