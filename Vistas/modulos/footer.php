<section class="newsletter text-center py-5">
	<div class="container py-lg-3">
		<div class="subscribe_inner">
			<h4 class="mb-4">Subscribete</h4>
			<p class="mb-4">Suscríbase a nuestra plataforma para recibir las últimas ofertas de nuestro Hotel al instante. </p>
			<form action="#" method="post" class="subscribe_form">
				<input class="form-control" type="email" placeholder="Ingresa tu Email..." required="" name="emailS">
				<button type="submit" class="btn1 btn-primary submit"><i class="fas fa-paper-plane" aria-hidden="true"></i></button>
			</form>

			<?php

			$suscriptor = new SuscriptoresC();
			$suscriptor -> EnviarSuscriptorC();

			?>

			<div class="social mt-5">
				<ul class="d-flex mt-4 justify-content-center">
					<?php
						$redes = new InicioC();
						$redes -> VerRedesC();
					?>
					
				</ul>
			</div>
		</div>
		<div class="copyright mt-5">
			<p>© 2020 Hotel Web Site. Todos los derechos reservados | Diseñado por	<a href="https://www.geeks-desarrollodigital.com">GeeksDD</a> </p>
		</div>
	</div>
</section>