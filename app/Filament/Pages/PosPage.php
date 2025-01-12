<?php

namespace App\Filament\Pages;
use Illuminate\Support\Facades\Auth;
use Filament\Pages\Page;
use Spatie\Permission\Traits\HasRoles;
use Filament\Support\Enums\MaxWidth;

class PosPage extends Page
{

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.pos-page';

    protected static ?string $slug = 'pos';

    protected static ?string $title = 'Halaman Kasir';


    
    public static function canAccess(): bool
    {
        return Auth::guard('web')->check() && Auth::user()->hasRole(['Kasir', 'super_admin']);
    }

    public function getMaxContentWidth(): MaxWidth
{
    return MaxWidth::Full;
}
   

}
