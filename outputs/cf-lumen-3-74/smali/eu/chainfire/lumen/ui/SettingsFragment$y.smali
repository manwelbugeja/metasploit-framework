.class Leu/chainfire/lumen/ui/SettingsFragment$y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->L(Leu/chainfire/lumen/ui/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/a;

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$y;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$y;->a:Leu/chainfire/lumen/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$y;->a:Leu/chainfire/lumen/ui/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/a;->a()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "http://www.twitter.com/ChainfireXDA"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$y;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
