<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class facture extends Model
{
    protected $table = 'factures';

    public $timestamps = false;

    /**
     * Get the phone record associated with the user.
     */
    public function reservation()
    {
        return $this->hasOne('App\Reservation');
    }
}
