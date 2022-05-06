component {

	public any function getCode128( required string data ) output=true {
		cfsetting( showdebugoutput = false );

		outStream = createObject( "java", "java.io.ByteArrayOutputStream" ).init();

		// -----------------------------------------------------------
		// Create the barcode, and draw it to a buffered image class.
		// -----------------------------------------------------------
		barcode       = createObject( "java", "net.sourceforge.barbecue.BarcodeFactory" ).createCode128( "#arguments.data#" );
		bufferedImage = createObject( "java", "net.sourceforge.barbecue.BarcodeImageHandler" )
			.writeJPEG(
			barcode,
			outStream
		);

		//  Return the information as streaming bytes of type image/jpeg
		getPageContext().getOut().clearBuffer();

		cfcontent( variable = outStream.toByteArray(), type = "image/jpeg" );

		return;
	}

}
