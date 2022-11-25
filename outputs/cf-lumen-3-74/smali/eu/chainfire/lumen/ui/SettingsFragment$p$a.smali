.class Leu/chainfire/lumen/ui/SettingsFragment$p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$p;->a(Leu/chainfire/lumen/ui/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/a;

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment$p;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$p;Leu/chainfire/lumen/ui/a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$p;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$p$a;->a:Leu/chainfire/lumen/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p$a;->a:Leu/chainfire/lumen/ui/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/ui/a;->a()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$p$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$p;

    iget-object v2, v2, Leu/chainfire/lumen/ui/SettingsFragment$p;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$p;

    iget-object v1, v1, Leu/chainfire/lumen/ui/SettingsFragment$p;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
