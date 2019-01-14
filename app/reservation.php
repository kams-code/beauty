<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class reservation extends Model
{
    protected $table = 'reservations';

    public $timestamps = false;

    /**
     * Get the Client that owns the Ticket.
     */
    public function facture()
    {
        return $this->belongsTo('App\Facture');
    }

    /**
     * Get the post that owns the comment.
     */
    public function client()
    {
        return $this->belongsTo('App\Client');
    }
}
