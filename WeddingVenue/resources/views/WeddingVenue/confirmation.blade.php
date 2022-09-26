@extends('MasterPage.mast')
@section('content')


{{-- <div class="ttm-page-title-row">
  <div class="ttm-page-title-row-inner ttm-bgcolor-darkgrey">
      <div class="container">
          <div class="row align-items-center">
              <div class="col-lg-12">
                  <div class="page-title-heading">
                      <h2 class="title"></h2>
                  </div>
                  <div class="heading-seperator">
                      <span></span>
                  </div>
                  <div class="breadcrumb-wrapper">
                      <span>
                          <a title="Homepage" href="/">Confirmation</a>
                      </span>
                  
                      <span></span>
                  </div>
              </div>
          </div>
      </div>
  </div>                    
</div> --}}

<!-- Page Wrapper -->
<section class="error-404 ttm-bgcolor-grey">
  <div class="container">
      <div class="row" >
          {{-- <div class="col-md-12">
              <div class="ttm-big-icon ttm-textcolor-skincolor">
                
                <i class="fa-li fa fa-check-square"></i>
        </div>
          </div> --}}
          <div class="col-md-12">
            
        <br/><h2 class="text-center">Thank you For Booking</h2>
        <div class="page-content"> <p>Please visit the Wedding Hall within <strong style="color:#c78665">3 days</strong> to confirm your booking.</p></div>
        <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-square ttm-btn-style-fill ttm-btn-color-white" href="/">Back To Home</a>
    </div>
</div>
</div>
</section>
<!-- /.page-warpper -->



@endsection