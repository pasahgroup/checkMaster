<style>
.bg-bannerw{
  
background-image:url({{URL::asset('../../assets/images/misc/bg-login.png')}});
    height: 70vh;
    width: 100%;
    position: relative;
    background-repeat: no-repeat;
    background-size:cover;
};

</style>


<x-guest-layout>
   
    <x-jet-authentication-card>
        <div class="bg-bannerwx"> 
        <x-slot name="logo">
            <span class="brand-text"><img style="height: 60px;" alt="Logo"
                src="../../assets/images/misc/bg-login.png" /></span>
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <form method="post" action="{{ route('login') }}">
            @csrf
            <div>
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="form-control" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="form-control" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                <x-jet-button class="ml-4">
                    {{ __('Log in') }}
                </x-jet-button>
            </div>
            <a href="{{ route('forget.password.get') }}">Forget Password</a>
        </form>
   </div>
    </x-jet-authentication-card>
</x-guest-layout>
  