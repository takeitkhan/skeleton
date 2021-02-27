<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@4.0.0/animate.min.css" />
<script src="https://unpkg.com/bulma-toast@2.2.0/dist/bulma-toast.min.js"></script>

@if(Session::has('message'))
<script>
		bulmaToast.toast({ 
		message: '{{ Session::get('message') }}', 
		type: 'is-info',
		position: 'bottom-left',
		dismissible: true,
		closeOnClick: true,
		duration: 4000,
		pauseOnHover: true,
		animate: { in: 'fadeIn', out: 'fadeOut' }, 
	})
    </script>
@endif

@if($errors->any())
    @foreach ($errors->all() as $error)
        <script>
            bulmaToast.toast({ 
	        message: '{{ Session::get('errors') }}', 
	        type: 'is-info',
	        position: 'top-right',
	        dismissible: true,
	        closeOnClick: true,
	        duration: 4000,
	        pauseOnHover: true,
	        animate: { in: 'fadeIn', out: 'fadeOut' }, 
	    })
        </script>
    @endforeach
@endif


