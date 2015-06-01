angular.module "planck", []
  .controller "AppController", AppController

AppController.$inject = []
class AppController
  constructor: () ->
    ctrl = @

    ctrl.entries = [
      {
        time: new DateTime
        title: "Hello"
        comments: [
          "Did somthing"
          "Did somthing more"
        ]
      }
    ]



