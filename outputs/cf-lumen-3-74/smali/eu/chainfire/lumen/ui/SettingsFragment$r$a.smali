.class Leu/chainfire/lumen/ui/SettingsFragment$r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$r;->a(Leu/chainfire/lumen/ui/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/a;

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment$r;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$r;Leu/chainfire/lumen/ui/a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$r$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$r;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$r$a;->a:Leu/chainfire/lumen/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$r$a;->a:Leu/chainfire/lumen/ui/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/ui/a;->a()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x10000000

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$r$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$r;

    iget-object v2, v2, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$UsageAccessSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$r$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$r;

    iget-object v0, v0, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
