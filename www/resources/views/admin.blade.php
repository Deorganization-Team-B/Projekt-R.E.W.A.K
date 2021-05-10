@extends('layouts.welcomemain_admin')

@section('dropbar')
    @if (isset($boards))
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            {{ __('Boadrs List') }}
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            @foreach ($boards as $board)
                <a class="dropdown-item" href="/admin/{{$board->id_wall}}">{{$board->name}}</a>

            @endforeach
        </div>
    @endif
@endsection
@section('addpost')
    @if (isset($walls))
        <a class="navbar-brand" href="/admin/{{$walls[0]->id_wall}}/createpost">
            <img src="{{asset('img/post_add.png')}}" height="55" alt="">
        </a>
    @endif
@endsection
@section('content')

<div class="container">


    @if (isset($posts))
        <div class="d-grid gap-3">
            @foreach ($posts as $post)
                <div class="row justify-content-center p-2">
                    <div class="col-md-8">
                        <div class="card border border-white">
                            <div class="card-header bg-dark text-white border-bottom border-light"><span class="">{{$post->title}}</span><span class="float-right"> {{$post->name}}<img src="{{asset('img/GigaChad.png')}}" style="max-height: 50px;" alt="User Profile Picture Placeholder"></span></div>
                            <div class="card-body bg-dark text-white "><img class="img-fluid rounded mx-auto d-block" src="https://imgur.com/{{ $post->imgur }}"></div>
                            <div class="card-body bg-dark text-white">{!! $post->post !!}</div>
                            <div class="card-body bg-dark text-white border-top border-light">



                                @if (isset($walls))
                                    <a class="text-start" href="/admin/{{$walls[0]->id_wall}}/delete-post/{{$post->id}}">{{ __('Delete Post') }}</a>
                                    <a class="text-start" href="/admin/{{$walls[0]->id_wall}}/editpost/{{$post->id}}">{{ __('Update Post') }}</a>
                                    <span class="float-right">


                                        <a class="text-end" href="/admin/{{$walls[0]->id_wall}}/{{$post->id}}">{{ __('Comments') }}</a>

                                    </span>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            @if (isset($comments))
            <!-- stub for a future comments -->
                @foreach ($comments as $comment)
                    <div class="row justify-content-center p-0">
                        <div class="col-md-7">
                            <div class="card border border-white">

                                <div class="card-body bg-dark text-white">
                                    {!! $comment->comment !!}<br>


                                    <span class="float-right">
                                        <a class="text-end" href="{{$posts[0]->id}}/delete-comment/{{$comment->id}}">{{ __('Delete Comment') }}</a>
                                    {{$comment->name}}</span>


                                </div>
                            </div>
                        </div></div>

                @endforeach
            @endif
        </div>
    @else
        @if (isset($editpost))
            <div class="row justify-content-center p-2">
                <div class="col-md-8">
                    <div class="card border border-white">
                        @if(Session::has('post_update'))
                            <span>{{Session::get('post_update')}}</span>
                        @endif
                        <div class="card-header bg-dark text-white border-bottom border-light">{{ __('Edit Post') }}</div>

                        <div class="card-body bg-dark text-white">
                            <form method="POST" action="/admin/{{$editpost[0]->id_wall}}/editpost">
                                @csrf
                                <div class="form-group row">
                                    <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Title') }}</label>

                                    <div class="col-md-6">
                                        <input id="title" type="text" class="form-control " name="title" value="{{$post[0]->title}}" required autocomplete="title" autofocus>



                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Image') }}</label>

                                    <div class="col-md-6">
                                        <input id="imgur" type="text" class="form-control " name="imgur" value="{{$post[0]->imgur}}" required autocomplete="imgur" autofocus>



                                    </div>
                                </div>
                                <input id="id" type="hidden" name="id" value="{{$post[0]->id}}">
                                <input id="edited" type="hidden" name="edited" value="<strong>Edited: </strong>">
                                <input id="editor_id" type="hidden" name="editor_id" value="{{Auth::user()->id}}">
                                {{ __('Orginal post:') }}<br>
                                {!!$post[0]->post!!}
                                <textarea name="post"></textarea>




                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            {{ __('Update Post') }}
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                @else
        @if (isset($createcomment))
            <div class="row justify-content-center p-2">
                <div class="col-md-8">
                    <div class="card border border-white">
                        @if(Session::has('comment_add'))
                            <span>{{Session::get('comment_add')}}</span>
                        @endif
                        <div class="card-header bg-dark text-white border-bottom border-light">{{ __('Create Comment') }}</div>

                        <div class="card-body bg-dark text-white">
                            <form method="POST" action="createcomment">
                                @csrf

                                <input id="user_id" type="hidden" name="user_id" value="{{Auth::user()->id}}">
                                <textarea name="comment"></textarea>




                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            {{ __('Create Comment') }}
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                @else
                    @if (isset($createpost))
                        <div class="row justify-content-center p-2">
                            <div class="col-md-8">
                                <div class="card border border-white">
                                    @if(Session::has('post_add'))
                                        <span>{{Session::get('post_add')}}</span>
                                    @endif
                                    <div class="card-header bg-dark text-white border-bottom border-light">{{ __('Create Post') }}</div>

                                    <div class="card-body bg-dark text-white">
                                        <form method="POST" action="createpost">
                                            @csrf
                                            <div class="form-group row">
                                                <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Title') }}</label>

                                                <div class="col-md-6">
                                                    <input id="title" type="text" class="form-control " name="title" value="{{ old('title') }}" required autocomplete="title" autofocus>



                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Image') }}</label>

                                                <div class="col-md-6">
                                                    <input id="imgur" type="text" class="form-control " name="imgur" value="{{ old('imgur') }}" required autocomplete="imgur" autofocus>



                                                </div>
                                            </div>
                                            <input id="user_id" type="hidden" name="user_id" value="{{Auth::user()->id}}">
                                            <textarea name="post"></textarea>




                                            <div class="form-group row mb-0">
                                                <div class="col-md-6 offset-md-4">
                                                    <button type="submit" class="btn btn-primary">
                                                        {{ __('Create Post') }}
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            @else
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-md-8">
                                            <div class="card border border-white">
                                                <div class="card-header bg-dark text-white border-bottom border-light">{{ __('Dashboard') }}</div>

                                                <div class="card-body bg-dark text-white">
                                                    @if (session('status'))
                                                        <div class="alert alert-success" role="alert">
                                                            {{ session('status') }}
                                                        </div>
                                                    @endif

                                                    {{ __('You are logged in!') }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                            @endif
            @endif
                            @endif
</div>
@endsection
