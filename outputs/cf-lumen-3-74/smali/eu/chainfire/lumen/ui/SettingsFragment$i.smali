.class Leu/chainfire/lumen/ui/SettingsFragment$i;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$i;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Leu/chainfire/lumen/ui/SettingsFragment$q0;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$i;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Leu/chainfire/lumen/ui/SettingsFragment$q0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v0
.end method
