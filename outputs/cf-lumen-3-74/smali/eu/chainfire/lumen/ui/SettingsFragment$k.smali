.class Leu/chainfire/lumen/ui/SettingsFragment$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    invoke-static {p1, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->b(Leu/chainfire/lumen/ui/SettingsFragment;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$k;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->b(Leu/chainfire/lumen/ui/SettingsFragment;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
