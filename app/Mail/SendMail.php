<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    public $subject;

    public function __construct($data, $subject)
    {
        $this->data = $data;
        $this->subject = $subject;
    }

    public function build()
    {
        //dd($this->data[0]['site_id']);
        //dd($this->data['message']);
        $address = 'noushad.playstore@gmail.com';
        $subject = $this->subject;
        $name = 'System Mail';
        $messages = $this->data;
        return $this->view('email', compact('messages'))
                    ->from($address, $name)
                    ->cc($address, $name)
                    ->replyTo($address, $name)
                    ->subject($subject);
    }
}
