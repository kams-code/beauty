<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $table = 'ticket';

    public $timestamps = false;

    /**
     * Get the Client that owns the Ticket.
     */
    public function client()
    {
        return $this->belongsTo('App\Client');
    }
}
