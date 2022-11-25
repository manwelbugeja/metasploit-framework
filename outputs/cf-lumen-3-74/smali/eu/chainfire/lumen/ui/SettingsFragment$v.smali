.class Leu/chainfire/lumen/ui/SettingsFragment$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->z()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$v;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$v;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$v;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
