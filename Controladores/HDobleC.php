<?php

class HDobleC{

	public function VerHDobleC(){

		$tablaBD = "hdoble";

		$respuesta = HDobleM::VerHDobleM($tablaBD);

		echo '<div class="col-lg-3 col-md-6 col-sm-6 price-grid">
				<div class="price-block agile">
					<div class="price-gd-top">

					<img src="admin/'.$respuesta["imagen"].'" alt=" " class="img-responsive img-fluid" />

						<h4>Habitacion Doble</h4>

					</div>

					<div class="price-gd-bottom">

						   <div class="price-list">
								<ul>';

								switch ($respuesta["estrellas"]) {
									case '1':
										echo '<li><i class="fa fa-star" aria-hidden="true"></i></li>';
										break;

									case '2':
										echo '<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>';
										break;
									case '3':
										echo '<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>';
										break;
									case '4':
										echo '<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>';
										break;
									
									default:
										echo '<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>';
										break;
								}
										
							     echo '</ul>
						</div>

						<div class="price-selet">	

							<h3><span>$</span> '.$respuesta["precio"].'</h3>		

							<a href="#appointment" class="scroll" >Reserva Ahora</a>

						</div>
					</div>
				</div>
			</div>';

	}

}