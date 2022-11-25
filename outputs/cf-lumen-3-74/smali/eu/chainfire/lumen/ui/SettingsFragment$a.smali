.class Leu/chainfire/lumen/ui/SettingsFragment$a;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    new-instance p1, Leu/chainfire/lumen/ui/SettingsFragment$a$a;

    invoke-direct {p1, p0}, Leu/chainfire/lumen/ui/SettingsFragment$a$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$a;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$l;->d()I

    move-result v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$l;->e()I

    move-result v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/datetimepicker/time/e;->t(Lcom/android/datetimepicker/time/e$g;IIZ)Lcom/android/datetimepicker/time/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/datetimepicker/time/e;->y(Z)V

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const v3, 0x7f090108

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method
