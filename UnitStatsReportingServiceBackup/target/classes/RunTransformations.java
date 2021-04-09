package kettle;
import main.RSmartMain;
import org.pentaho.di.core.KettleEnvironment;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.trans.Trans;
import org.pentaho.di.trans.TransMeta;

import java.io.File;
import java.util.Collection;


public class RunTransformations {


    public static RunTransformations getInstance(){return new RunTransformations();}
    public static void getAndRunAllTransaction(){
       Collection<File> transformations = RSmartMain.getListOfAllTransformationsFiles();
        for (File transformationFile : transformations
        ) {
            RunTransformations.runTransformation(transformationFile.getPath());

        }
    }
    public static void main(String[] args){
        getAndRunAllTransaction();
    }

    public static String runTransformation(String filename) {
        String returnString = null;

        try {
            KettleEnvironment.init();
            TransMeta metaData = new TransMeta(filename);
            Trans trans = new Trans( metaData );
            trans.execute( null );
            trans.waitUntilFinished();
            if ( trans.getErrors() > 0 ) {
                System.out.print( "Error Executing transformation" );
            }
        }
        catch ( KettleException e ) {
            // TODO Put your exception-handling code here.
            System.out.println(e);

        }
        return returnString;
    }
}
