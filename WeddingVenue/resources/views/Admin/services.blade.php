@include('Admin.NavBar')
<div class="panel-header panel-header-sm">

</div>
<div class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          
          <h4 class="card-title"> Services</h4>
        
          <div class="pull-left">
            {{-- <a class="btn btn-success" href="{{ route('Halls.create') }}"> Add New Hall</a> --}}
            
        </div>
        <div class="pull-right" style="padding-right: 70px; ">
          <form action="/searchCategory"  method="get" role="search">
          @csrf
            <div class="input-group no-border">
              <input type="text" value="" class="form-control" placeholder="Search..." name="search">
              <div class="input-group-append">
                <div class="input-group-text">
                  <button type="submit" style="border: none; color:  #feacc6"><i class="now-ui-icons ui-1_zoom-bold"></i></button>
                </div>
              </div>
            </div>
          </form>
       
        </div>
        
        </div>
        <div class="card-body">
          <div class="table-responsive">
            @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
            <table class="table">
              <thead class=" text-primary">
                <th>
                  ID
                </th>
                <th>
                  Service Description
                </th>
                <th>
                  Service Price
                </th>
                
                <th >
                  Action
                </th>
              </thead>
              <tbody>
                @if(count($services) > 0)
               @foreach ($services as $service)
                  
                
                <tr>
                  <td>
                    {{$service->id;}}
                  </td>
                 
                  <td>
                    {{$service->service_description;}}
                  </td>
                  <td >
                    {{$service->service_price;}}
                  </td>
                 
                  <td>
                    <form action=" {{ route('Halls.destroy',$service->id) }}" method="POST"> 
                     
                      @csrf
                      @method('DELETE')
                      
                      <button type="submit" class="btn btn-danger">Delete</button>
                  </form>
                  </td>
                </tr>
                @endforeach
              @else <h5 style="color: #feacc6 ">No Hall found. Try to search again !</h5>

              @endif
              </tbody>

            </table>
           
          </div>
        </div>
      </div>
    </div>
   
  </div>
</div>
     @include('Admin.Footer')