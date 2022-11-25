.class Leu/chainfire/lumen/ui/SettingsFragment$s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Leu/chainfire/lumen/ui/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->z()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Z)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$s;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-boolean p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$s;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$s;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eu.chainfire.lumen.EXTRA_PURCHASE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/a;->a()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$s;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->B()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
