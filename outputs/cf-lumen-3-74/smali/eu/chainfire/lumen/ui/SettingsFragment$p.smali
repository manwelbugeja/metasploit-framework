.class Leu/chainfire/lumen/ui/SettingsFragment$p;
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
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x7f0900a4

    const v3, 0x7f090094

    iget-object v4, p1, Leu/chainfire/lumen/ui/a;->c:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f090098

    new-instance v8, Leu/chainfire/lumen/ui/SettingsFragment$p$a;

    invoke-direct {v8, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$p$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p;Leu/chainfire/lumen/ui/a;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
