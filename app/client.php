<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class client extends Model
{

    protected $table = 'clients';

    public $timestamps = false;

    protected $fillable = ['code','nom','prenom','adresse','email','number'];

    /**
     * Get the phone record associated with the user.
     */
    public function ticket()
    {
        return $this->hasOne('App\Ticket');
    }

    /**
     * Get the comments for the blog post.
     */
    public function reservations()
    {
        return $this->hasMany('App\Reservation');
    }
}
