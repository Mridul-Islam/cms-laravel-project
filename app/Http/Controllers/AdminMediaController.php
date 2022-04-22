<?php

namespace App\Http\Controllers;

use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AdminMediaController extends Controller
{
    public  function index(){
        $photos = Photo::paginate(15);
        return view('admin.media.index', compact('photos'));
    }

    public function create(){
        return view('admin/media/create');
    }

    public function store(){

    }

    public function destroy($id){
        $photo = Photo::findOrFail($id);

        unlink(public_path() . $photo->image);
        $photo->delete();

        Session::flash('deleted_photo', 'The photo has been deleted');

        return redirect('admin/media');
    }

    // Delete multiple photo
    public function mediaDelete(Request $request){
        $photos = Photo::findOrFail($request->checkBoxArray);
        foreach($photos as $photo){
            unlink(public_path() . $photo->image);
            $photo->delete();
        }

        return redirect()->back();
    }


} //End of class
