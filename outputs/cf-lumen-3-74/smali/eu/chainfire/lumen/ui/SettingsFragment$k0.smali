.class Leu/chainfire/lumen/ui/SettingsFragment$k0;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k0;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k0;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$k0;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    iget-object v0, v0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k0;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    iget-object v1, v1, Leu/chainfire/lumen/a$f;->d:Leu/chainfire/lumen/a$d;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Leu/chainfire/lumen/ui/FilterSelectActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method
