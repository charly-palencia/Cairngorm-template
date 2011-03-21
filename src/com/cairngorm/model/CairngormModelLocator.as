package net.davidtucker.CairngormSample.model {
   
        import com.adobe.cairngorm.model.IModelLocator;
        
        [Bindable]
        public class ModelLocator implements IModelLocator {
             
                // Single Instance of Our ModelLocator
                private static var instance:ModelLocator;
                
                //workflow state
                public var workflowState:uint = 0;

                //statics views
                public static const LOGIN_SCREEN = 0;
                public static const WELCOME_SCREEN = 1;0
              public function ModelLocator(enforcer:SingletonEnforcer) {
         
                  if (enforcer == null) {
                            throw new Error( "You Can Only Have One ModelLocator" );
                        }
                    }
                    
                      // Returns the Single Instance
                      public static function getInstance() : ModelLocator {
                               
                              if (instance == null) {
                                    instance = new ModelLocator( new SingletonEnforcer );
                                }
                                return instance;
                            }
                           
                              //DEFINE YOUR VARIABLES HERE       
                             
                          }
}
 
// Utility Class to Deny Access to Constructor
class SingletonEnforcer {}
