<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::select()
                    ->paginate(16);
        return view('app.index', ['etudiants'=>$etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        return view('app.create', ['villes'=>$villes]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom' => 'required|min:2',
            'adresse' => 'required|min:10',
            'phone' => 'required|min:10|max:20',
            'email' => 'required|email|unique:users',
            'dateNaissance' => 'required|date_format:j-n-Y|after:1900-01-01',
            'id_ville' => 'required|integer|exists:cities,id',
        ]);

        $newEtudiant = Etudiant::create([
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'phone'=>$request->phone,
            'email'=>$request->email,
            'dateNaissance'=>$request->dateNaissance,
            'id_ville'=>$request->id_ville
        ]);

        return redirect(route('app.show', $newEtudiant->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('app.show', ['etudiant'=>$etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $villes = Ville::all();
        return view('app.edit', ['etudiant'=>$etudiant, 'villes'=>$villes]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {

        $request->validate([
            'nom' => 'required|min:2',
            'adresse' => 'required|min:10',
            'phone' => 'required|min:10|max:20',
            'email' => 'required|email|unique:users',
            'dateNaissance' => 'required|date_format:j-n-Y|after:1900-01-01',
            'id_ville' => 'required|integer|exists:cities,id',
        ]);
        
        $etudiant->update([
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'phone'=>$request->phone,
            'email'=>$request->email,
            'dateNaissance'=>$request->dateNaissance,
            'id_ville'=>$request->id_ville
        ]);

        return redirect(route('app.show', $etudiant->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        
        return redirect(route('app.index'));
    }

    public function page(){
        $etudiants = Etudiant::select()
                ->paginate(8);

                return view('app.page', ['etudiants' => $etudiants]);
    }
}
