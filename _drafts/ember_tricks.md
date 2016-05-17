
If you want to log all the data in an ember controller, try this

      logControllerData: Ember.computed('controller.[]', function() {
        console.log(this.get('controller'));
      }),



