.class Leu/chainfire/lumen/ui/SettingsFragment$r;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:get_usage_stats"

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v4, "granted"

    goto :goto_1

    :cond_1
    const-string v4, "denied"

    :goto_1
    aput-object v4, v3, v2

    const-string v4, "Permission for PACKAGE_USAGE_STATS: %s"

    invoke-static {v4, v3}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$r;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rootless"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v4, 0x7f0900a3

    const v5, 0x7f090094

    iget-object v6, p1, Leu/chainfire/lumen/ui/a;->c:Ljava/lang/Runnable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f090098

    new-instance v10, Leu/chainfire/lumen/ui/SettingsFragment$r$a;

    invoke-direct {v10, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$r$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$r;Leu/chainfire/lumen/ui/a;)V

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return v2

    :cond_2
    return v1
.end method
