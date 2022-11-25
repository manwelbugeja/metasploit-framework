.class Leu/chainfire/lumen/ui/SettingsFragment$n0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment$n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment$n0;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$n0;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->a(Leu/chainfire/lumen/ui/SettingsFragment$n0;)Landroid/app/ProgressDialog;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b(Leu/chainfire/lumen/ui/SettingsFragment$n0;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-static {v2}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b(Leu/chainfire/lumen/ui/SettingsFragment$n0;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-static {v1, p1}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c(Leu/chainfire/lumen/ui/SettingsFragment$n0;Landroid/location/Location;)Landroid/location/Location;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
