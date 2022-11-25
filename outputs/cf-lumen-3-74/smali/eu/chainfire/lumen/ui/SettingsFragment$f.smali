.class Leu/chainfire/lumen/ui/SettingsFragment$f;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Leu/chainfire/lumen/Application;

    invoke-virtual {p1}, Leu/chainfire/lumen/Application;->a()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1
.end method
