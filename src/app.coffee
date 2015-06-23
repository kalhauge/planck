
class AppController
  constructor: () ->
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


AppController.$inject = []


angular.module "planck", []
  .controller "AppController", AppController

