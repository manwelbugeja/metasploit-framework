.class Leu/chainfire/lumen/ui/SettingsFragment$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Leu/chainfire/lumen/a;->i(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$l;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
