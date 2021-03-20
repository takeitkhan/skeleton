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

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build()
    {
        //dd($this->data['message']);
        $address = 'noushad.playstore@gmail.com';
        $subject = 'This is a demo!';
        $name = 'Jane Doe';
        $messages = $this->data['message'];
        return $this->view('email', compact('messages'))
                    ->from($address, $name)
                    ->cc($address, $name)
                    ->replyTo($address, $name)
                    ->subject($subject);
    }
}