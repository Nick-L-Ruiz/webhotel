  <div class="plans-section py-5" id="rooms">
				 <div class="container py-md-3">
				  <div class="w3-head-all mb-3">
		         <h3>Habitaciones y Tarifas</h3>
		       </div>
						<div class="priceing-table-main">
			 <div class="row">

			 	<?php

			 	$hs = new HSimpleC();
			 	$hs -> VerHSimpleC();

			 	?>
				 
				<?php

			 	$hd = new HDobleC();
			 	$hd -> VerHDobleC();

			 	?>

				<?php

			 	$ht = new HTripleC();
			 	$ht -> VerHTripleC();

			 	?>
				
				<?php

			 	$hst = new HSuiteC();
			 	$hst -> VerHSuiteC();

			 	?>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>